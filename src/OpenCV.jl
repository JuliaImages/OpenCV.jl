module OpenCV

using OpenCV_jll
using FileIO: File, DataFormat, Stream, stream

include(joinpath(OpenCV_jll.artifact_dir, "OpenCV", "src", "OpenCV.jl"))

include("fileio.jl")

end
