@testset "issue #31: VideoWriter_fourcc" begin
    # Reference value from Python: cv2.VideoWriter_fourcc(*"h264") == 875967080.
    @test OpenCV.VideoWriter_fourcc("h264"...) == 875967080
    @test OpenCV.VideoWriter_fourcc("h264") == 875967080
    @test OpenCV.VideoWriter_fourcc("mp4v") == 1983148141
    @test OpenCV.VideoWriter_fourcc("h264"...) == OpenCV.VideoWriter_fourcc("h264")
    @test_throws ArgumentError OpenCV.VideoWriter_fourcc("h26")
    @test_throws ArgumentError OpenCV.VideoWriter_fourcc("h2645")
end
