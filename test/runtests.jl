using OpenCV
using Test
using Pkg.Artifacts
import LibGit2


if "OPENCV_TEST_DATA_PATH" in keys(ENV)
    test_dir = joinpath(ENV["OPENCV_TEST_DATA_PATH"], "cv")

else
    print("Skipping tests as test data not found.")  
    exit(0)

    # artifact_toml = joinpath(@__DIR__, "Artifacts.toml")
    # testdata_hash = artifact_hash("OPENCV_TEST_DATA_PATH", artifact_toml)
    
    # if testdata_hash === nothing || !artifact_exists(testdata_hash)
    #     testdata_hash = create_artifact() do artifact_dir
    #         opencv_extra_zip = "https://github.com/opencv/opencv_extra/archive/refs/heads/master.zip"
    #         download(opencv_extra_zip, artifact_dir)
            
    #         LibGit2.clone(opencv_extra_git, artifact_dir)
    #     end
    #     bind_artifact!(artifact_toml, "OPENCV_TEST_DATA_PATH", testdata_hash)
    # end
    
    # test_dir = joinpath(artifact_path(testdata_hash), "opencv_extra", "cv")

end


include("test_mat.jl")
include("test_feature2d.jl")
include("test_imgproc.jl")
include("test_objdetect.jl")
include("test_dnn.jl")