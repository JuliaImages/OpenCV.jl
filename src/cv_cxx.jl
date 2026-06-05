# using StaticArrays

using OpenCV_jll

include("typestructs.jl")
include("Vec.jl")
const dtypes = Union{UInt8, Int8, UInt16, Int16, Int32, Float32, Float64}

# `size_t` is referenced verbatim by the generated wrappers (e.g.
# `maxIters::size_t` in `estimateAffine2D`). `Csize_t` resolves to the
# platform's pointer-width unsigned, matching C `size_t`.
const size_t = Csize_t

using CxxWrap
@wrapmodule(OpenCV_jll.get_libopencv_julia_path, :cv_wrap)
function __init__()
    @initcxx
end
const Scalar = Union{Tuple{}, Tuple{Number}, Tuple{Number, Number}, Tuple{Number, Number, Number}, NTuple{4, Number}}

include("errors.jl")
include("Mat.jl")

const InputArray = Union{AbstractArray{T, 3} where {T <: dtypes}, CxxMat}

include("mat_conversion.jl")
include("types_conversion.jl")

function cpp_to_julia(var)
    return var
end
function julia_to_cpp(var)
    return var
end

function cpp_to_julia(var::Tuple)
    ret_arr = Array{Any, 1}()
    for it in var
        push!(ret_arr, cpp_to_julia(it))
    end
    return tuple(ret_arr...)
end

function cpp_to_julia(var::CxxBool)
    return Bool(var)
end

function julia_to_cpp(var::Bool)
    return CxxBool(var)
end

# VideoWriter_fourcc is the one generated wrapper that takes Char arguments;
# its C++ binding expects Cchar (Int8). See issue #31.
julia_to_cpp(c::Char) = Cchar(c)


include("generated/cv_cxx_wrap.jl")

# Hand-written overrides of the generated wrappers, grouped by concern.
include("overrides/defaults.jl")     # default-argument convenience constructors
include("overrides/covariance.jl")   # AbstractVector{<:InputArray} covariant overloads
include("overrides/convenience.jl")  # GUI callbacks, CascadeClassifier, VideoWriter_fourcc