using Artifacts
using LazyArtifacts
using OpenCV
using FileIO
using Test
using XML
using LinearAlgebra

if "OPENCV_TEST_DATA_PATH" in keys(ENV)
    test_dir = joinpath(ENV["OPENCV_TEST_DATA_PATH"], "cv")
else
    opencv_extra_path = first(readdir(artifact"opencv_extra"; join = true))
    test_dir = joinpath(opencv_extra_path, "testdata", "cv")
end

@testset "OpenCV" begin
    include("test_mat.jl")
    include("test_feature2d.jl")
    include("test_imgproc.jl")
    include("test_objdetect.jl")
    include("test_dnn.jl")
    include("test_fileio.jl")
    include("test_corner_detection.jl")
end
