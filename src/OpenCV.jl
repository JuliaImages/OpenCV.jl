module OpenCV

using OpenCV_jll
using FileIO
using FileIO: DataFormat, File, Stream, stream

include(joinpath(OpenCV_jll.artifact_dir, "OpenCV", "src", "OpenCV.jl"))

include("fileio.jl")
include("show.jl")

end
