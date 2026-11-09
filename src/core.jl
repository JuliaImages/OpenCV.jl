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
#      conversion methods, so they must be defined first. This file ends with a
#      hand-authored "Manual Wrapping" section (GUI callbacks, CascadeClassifier)
#      emitted by the generator; see gen/binding_templates_jl/manual_cxx.jl.
#   7. videoio.jl — hand-written conveniences layered on the generated wrappers.

using Preferences

# The binary backend is chosen at precompile time, so only one OpenCV build is
# ever loaded. Both JLLs ship a `libopencv_julia` generated from the same sources,
# so the wrappers below are identical for either. See `set_backend!`.
const backend = @load_preference("backend", "cpu")
backend in ("cpu", "cuda") || error("OpenCV: invalid backend preference \"$backend\"; use \"cpu\" or \"cuda\"")
@static if backend == "cuda"
    import OpenCV_CUDA_jll as libopencv_jll
else
    import OpenCV_jll as libopencv_jll
end

"""
    OpenCV.set_backend!(backend::String)

Select the OpenCV binaries: `"cpu"` (default, `OpenCV_jll`) or `"cuda"`
(`OpenCV_CUDA_jll`, Linux with an NVIDIA CUDA 13 driver). The choice is stored as a
preference in the active project and takes effect after restarting Julia.
"""
function set_backend!(new_backend::String)
    new_backend in ("cpu", "cuda") || throw(ArgumentError("backend must be \"cpu\" or \"cuda\""))
    @set_preferences!("backend" => new_backend)
    new_backend == backend || @info "OpenCV backend set to \"$new_backend\"; restart Julia for it to take effect."
    return nothing
end

include("typestructs.jl")
include("Vec.jl")
const dtypes = Union{UInt8, Int8, UInt16, Int16, Int32, Float32, Float64}

# `size_t` is referenced verbatim by the generated wrappers (e.g.
# `maxIters::size_t` in `estimateAffine2D`). `Csize_t` resolves to the
# platform's pointer-width unsigned, matching C `size_t`.
const size_t = Csize_t

using CxxWrap
@wrapmodule(libopencv_jll.get_libopencv_julia_path, :cv_wrap)
function __init__()
    if !libopencv_jll.is_available()
        error("OpenCV: the \"$backend\" backend has no binaries for this system" *
              (backend == "cuda" ? " (it needs Linux and an NVIDIA CUDA 13 driver). " *
                                   "Run `OpenCV.set_backend!(\"cpu\")` and restart Julia." : "."))
    end
    @initcxx
end
const Scalar = Union{Tuple{}, Tuple{Number}, Tuple{Number, Number}, Tuple{Number, Number, Number}, NTuple{4, Number}}

include("errors.jl")
include("Mat.jl")

const InputArray = Union{AbstractArray{T, 3} where {T <: dtypes}, CxxMat}

include("mat_conversion.jl")
include("types_conversion.jl")

include("generated/cv_cxx_wrap.jl")

# Hand-written conveniences layered on top of the generated wrappers.
include("videoio.jl")  # VideoWriter_fourcc string-tag form (issue #31)