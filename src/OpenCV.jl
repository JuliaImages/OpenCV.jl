module OpenCV

using OpenCV_jll
using FileIO
using FileIO: DataFormat, File, Stream, stream

include(joinpath(OpenCV_jll.artifact_dir, "OpenCV", "src", "OpenCV.jl"))

include("patches_video.jl")
include("patches.jl")
include("patches_drawing.jl")
include("fileio.jl")
include("show.jl")

end
