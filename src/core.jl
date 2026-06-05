# Module bootstrap. Loads the compiled glue, registers the C++ types, and
# orchestrates the include order of the hand-written and generated sources.
#
# Load-order invariant (each step depends on the ones above it):
#   1. `@wrapmodule` registers the wrapped C++ types (CxxMat, CxxScalar, CxxVec,
#      KeyPoint, DMatch, CxxBool, …) — everything below may reference them.
#   2. the `dtypes` / `size_t` / `Scalar` / `InputArray` consts.
#   3. errors.jl   — defines OpenCVError, used by mat_conversion.jl.
#   4. Mat.jl, then the `InputArray` const (needs CxxMat from step 1).
#   5. mat_conversion.jl, then types_conversion.jl — the cpp_to_julia /
#      julia_to_cpp methods (see types_conversion.jl for the contract).
#   6. generated/cv_cxx_wrap.jl — the generated wrappers, which call those
#      conversion methods, so they must be defined first.
#   7. overrides/ — hand-written overrides of the generated wrappers.

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

include("generated/cv_cxx_wrap.jl")

# Hand-written overrides of the generated wrappers, grouped by concern.
include("overrides/defaults.jl")     # default-argument convenience constructors
include("overrides/covariance.jl")   # AbstractVector{<:InputArray} covariant overloads
include("overrides/convenience.jl")  # GUI callbacks, CascadeClassifier, VideoWriter_fourcc