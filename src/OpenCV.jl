"""
OpenCV.jl wraps the OpenCV 5.1 computer-vision library for Julia.

Main-namespace functions cover OpenCV's core, imgproc, imgcodecs, videoio, highgui,
calib/geometry/stereo, features, flann, objdetect, xobjdetect (`CascadeClassifier`),
photo, video, stitching and tracking modules. Namespaced APIs live in submodules,
e.g. `OpenCV.dnn`, `OpenCV.aruco`, `OpenCV.ml`, `OpenCV.ximgproc`, `OpenCV.xphoto`,
`OpenCV.xfeatures2d` and `OpenCV.optflow`.

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
# `core.jl` loads the compiled glue from OpenCV_jll, or from OpenCV_CUDA_jll when installed, and
# pulls in the static helpers plus generated/cv_cxx_wrap.jl.
include("core.jl")
include("generated/cv_wrap.jl")
# Hand-wrapped dnn methods (manual_cxx.jl) are not in the generated OpenCV.dnn module.
for f in (:setInputShape, :getFLOPS, :getMemoryConsumption, :getLayerShapes)
    Core.eval(dnn, :(const $f = $(getfield(OpenCV, Symbol(:dnn_, f)))))
end

include("fileio.jl")
include("show.jl")

end
