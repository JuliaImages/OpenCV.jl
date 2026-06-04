const CV_CN_MAX = 512
const CV_CN_SHIFT = 3
const CV_DEPTH_MAX = (1 << CV_CN_SHIFT)

const CV_8U = 0
const CV_8S = 1
const CV_16U = 2
const CV_16S = 3
const CV_32S = 4
const CV_32F = 5
const CV_64F = 6

const CV_MAT_DEPTH_MASK = (CV_DEPTH_MAX - 1)
CV_MAT_DEPTH(flags) = ((flags) & CV_MAT_DEPTH_MASK)

CV_MAKETYPE(depth,cn) = (CV_MAT_DEPTH(depth) + (((cn)-1) << CV_CN_SHIFT))
CV_MAKE_TYPE = CV_MAKETYPE

function cpp_to_julia(mat::CxxMat)
    rets = jlopencv_core_Mat_mutable_data(mat)
    if rets[2] == CV_MAKE_TYPE(CV_8U, rets[3])
        dtype = UInt8
    elseif rets[2]==CV_MAKE_TYPE(CV_8S, rets[3])
        dtype = Int8
    elseif rets[2]==CV_MAKE_TYPE(CV_16U, rets[3])
        dtype = UInt16
    elseif rets[2]==CV_MAKE_TYPE(CV_16S, rets[3])
        dtype = Int16
    elseif rets[2]==CV_MAKE_TYPE(CV_32S, rets[3])
        dtype = Int32
    elseif rets[2]==CV_MAKE_TYPE(CV_32F, rets[3])
        dtype = Float32
    elseif rets[2]==CV_MAKE_TYPE(CV_64F, rets[3])
        dtype = Float64
    else
        error("Bad type returned from OpenCV")
    end
    steps = [rets[6]/sizeof(dtype), rets[7]/sizeof(dtype)]
    # println(steps[1]/rets[3], steps[2]/rets[3]/rets[4])
    #TODO: Implement views when steps do not result in continous memory
    arr = Base.unsafe_wrap(Array{dtype, 3}, Ptr{dtype}(rets[1].cpp_object), (rets[3], rets[4], rets[5]))

    # Off-heap pressure hint (#10).
    _gc_external_pressure!(rets[3] * rets[4] * rets[5] * sizeof(dtype))

    #Preserve Mat so that array allocated by C++ isn't deallocated
    return Mat{dtype}(mat, arr)
end

# Off-heap byte counter for cv::Mat buffers; flush via incremental GC (#10).
const _gc_external_bytes = Threads.Atomic{Int64}(0)
const _gc_external_threshold = Ref{Int64}(256 * 1024 * 1024)

function _gc_external_pressure!(nbytes::Integer)
    total = Threads.atomic_add!(_gc_external_bytes, Int64(nbytes)) + Int64(nbytes)
    if total >= _gc_external_threshold[]
        Threads.atomic_sub!(_gc_external_bytes, total)
        GC.gc(false)
    end
    return nothing
end

function julia_to_cpp(img::InputArray)
    if typeof(img) <: CxxMat
        return img
    end
    steps = 0
    try
        steps = strides(img)
    catch
        # Copy array since array is not strided
        img = img[:, :, :]
        steps = strides(img)
    end

    if steps[1] <= steps[2] <= steps[3] && steps[1]==1
        steps_a = Array{size_t, 1}()
        ndims_a = Array{Int32, 1}()
        sz = sizeof(eltype(img))
        push!(steps_a, UInt64(steps[3]*sz))
        push!(steps_a, UInt64(steps[2]*sz))
        push!(steps_a, UInt64(steps[1]*sz))

        push!(ndims_a, Int32(size(img)[3]))
        push!(ndims_a, Int32(size(img)[2]))
        if eltype(img) == UInt8
            return CxxMat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_8U, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == UInt16
            return CxxMat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_16U, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Int8
            return CxxMat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_8S, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Int16
            return CxxMat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_16S, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Int32
            return CxxMat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_32S, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Float32
            return CxxMat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_32F, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        elseif eltype(img) == Float64
            return CxxMat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_64F, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        end
    else
        # Copy array, invalid config
        return julia_to_cpp(img[:, :, :])
    end
end

function julia_to_cpp(var::Array{T, 1}) where {T <: InputArray}
    ret = CxxWrap.StdVector{CxxMat}()
    for x in var
        push!(ret, julia_to_cpp(x))
    end
    return ret
end


function cpp_to_julia(var::CxxWrap.StdVector{T}) where {T <: CxxMat}
    ret = Array{Mat, 1}()
    for x in var
        m = cpp_to_julia(x)
        # Preserve parent StdVector: iterated CxxMat refs alias it (#57).
        push!(ret, Mat{eltype(m)}((var, m.mat), m.data))
    end
    return ret
end
