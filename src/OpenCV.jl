"""
OpenCV.jl wraps the OpenCV computer-vision library for Julia.

Images and matrices are represented by [`Mat`](@ref), a 3-dimensional `AbstractArray`
that shares memory with OpenCV's `cv::Mat`. **Mind the axis order:** a `cv::Mat` is
exposed with axes `(channels, cols, rows)` — see [`Mat`](@ref) for details and the
consequences for descriptor/result matrices.

The bindings are generated from the OpenCV headers (see `gen/`); the full list of
wrapped methods is in `gen/funclist.csv`.
"""
module OpenCV

using OpenCV_jll
using FileIO
using FileIO: DataFormat, File, Stream, stream

import Base.size

# Julia wrapper bindings. Previously these were generated at OpenCV binary-build
# time and shipped inside OpenCV_jll; they now live in this repository (see gen/)
# and are regenerated with `julia gen/regenerate.jl` on an OpenCV version bump.
# `core.jl` loads the compiled glue via OpenCV_jll.get_libopencv_julia_path and
# pulls in the static helpers plus generated/cv_cxx_wrap.jl.
include("core.jl")
include("generated/cv_wrap.jl")

include("fileio.jl")
include("show.jl")

end
