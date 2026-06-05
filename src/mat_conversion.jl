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

# Bijective map between Julia element types and OpenCV depth constants. The two
# conversion directions below both look this up rather than repeating a 7-branch
# `if`/`elseif` ladder; adding a supported dtype is a single entry here.
const _CV_DEPTH = (
    (UInt8,   CV_8U),
    (Int8,    CV_8S),
    (UInt16,  CV_16U),
    (Int16,   CV_16S),
    (Int32,   CV_32S),
    (Float32, CV_32F),
    (Float64, CV_64F),
)

# OpenCV depth constant for a Julia element type (throws on unsupported types).
function _cv_depth(::Type{T}) where {T}
    for (jt, depth) in _CV_DEPTH
        jt === T && return depth
    end
    throw(OpenCVError("unsupported array element type $T for cv::Mat; expected one " *
                      "of UInt8, Int8, UInt16, Int16, Int32, Float32, Float64"))
end

# Julia element type for an OpenCV type flag + channel count (throws on unknown flag).
function _julia_eltype(cvtype, channels)
    for (jt, depth) in _CV_DEPTH
        cvtype == CV_MAKE_TYPE(depth, channels) && return jt
    end
    throw(OpenCVError("unsupported cv::Mat type returned from OpenCV " *
                      "(type flag $cvtype, $channels channel(s))"))
end

function cpp_to_julia(mat::CxxMat)
    rets = jlopencv_core_Mat_mutable_data(mat)
    dtype = _julia_eltype(rets[2], rets[3])
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
        cvtype = CV_MAKE_TYPE(_cv_depth(eltype(img)), size(img)[1])
        return CxxMat(2, pointer(ndims_a), cvtype, Ptr{Nothing}(pointer(img)), pointer(steps_a))
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
