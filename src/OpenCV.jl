module OpenCV

using OpenCV_jll

include(joinpath(OpenCV_jll.artifact_dir, "OpenCV", "src", "OpenCV.jl"))

include("fileio.jl")

end
