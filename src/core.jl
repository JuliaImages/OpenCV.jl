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

using OpenCV_jll

include("typestructs.jl")
include("Vec.jl")
# Julia element types that map to an OpenCV 5 Mat depth (see `_CV_DEPTH` in
# mat_conversion.jl): CV_8U/8S/16U/16S/32S/32F/64F plus the 5.x additions
# CV_16F, CV_Bool, CV_32U, CV_64U and CV_64S.
const dtypes = Union{UInt8, Int8, UInt16, Int16, Int32, Float32, Float64,
                     Float16, Bool, UInt32, UInt64, Int64}

# `size_t` is referenced verbatim by the generated wrappers (e.g.
# `maxIters::size_t` in `estimateAffine2D`). `Csize_t` resolves to the
# platform's pointer-width unsigned, matching C `size_t`.
const size_t = Csize_t

# OpenCV_CUDA_jll is a weak dependency: Pkg would download its CUDA artifacts at
# install time even if it were never loaded, so users opt in by adding it to their
# environment. Its `libopencv_julia` registers the same bindings as OpenCV_jll's, so
# the wrappers precompiled against OpenCV_jll bind to it at `@initcxx`.
const OpenCV_CUDA_jll_id = Base.PkgId(Base.UUID("af62fff1-f688-5658-924c-c1100684873a"), "OpenCV_CUDA_jll")
const libopencv_jll = Ref{Module}(OpenCV_jll)

function find_cuda_jll()
    ccall(:jl_generating_output, Cint, ()) == 1 && return nothing
    Base.locate_package(OpenCV_CUDA_jll_id) === nothing && return nothing
    jll = Base.require(OpenCV_CUDA_jll_id)
    Base.invokelatest(jll.is_available) || return nothing
    # The wrappers bind only to a build of the same OpenCV release. `[compat]` can't
    # enforce this when OpenCV_CUDA_jll comes from another environment in the load
    # path, such as the default `@v1.x` environment.
    v_cuda, v_cpu = pkgversion(jll), pkgversion(OpenCV_jll)
    if (v_cuda.major, v_cuda.minor, v_cuda.patch) != (v_cpu.major, v_cpu.minor, v_cpu.patch)
        @warn "OpenCV: ignoring OpenCV_CUDA_jll $v_cuda, which does not match OpenCV_jll $v_cpu."
        return nothing
    end
    # Old builds (before 4.14.0+1) share sonames with OpenCV_jll, which is already loaded.
    if !occursin("_cuda", basename(Base.invokelatest(jll.get_libopencv_core_path)))
        @warn "OpenCV: ignoring OpenCV_CUDA_jll, whose libraries clash with OpenCV_jll's; update it to match OpenCV_jll."
        return nothing
    end
    return jll
end

libopencv_julia_path() = Base.invokelatest(libopencv_jll[].get_libopencv_julia_path)

using CxxWrap
@wrapmodule(libopencv_julia_path, :cv_wrap)
function __init__()
    jll = find_cuda_jll()
    jll === nothing || (libopencv_jll[] = jll)
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