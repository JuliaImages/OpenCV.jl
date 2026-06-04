@testset "features2d" begin
    img_gray = OpenCV.imread(joinpath(test_dir, "shared", "pic1.png"), OpenCV.IMREAD_GRAYSCALE)

    @testset "ORB detect+compute+match" begin
        orb = OpenCV.ORB_create()
        kps = OpenCV.detect(orb, img_gray)
        @test length(kps) > 0
        kps2, desc = OpenCV.compute(orb, img_gray, kps)
        @test length(kps2) == length(kps)
        @test size(desc, 1) == length(kps)
        @test size(desc, 2) == OpenCV.descriptorSize(orb)

        bf = OpenCV.BFMatcher_create(OpenCV.NORM_HAMMING, true)
        matches = OpenCV.match(bf, desc, desc)
        @test length(matches) == length(kps)
    end

    @testset "SimpleBlobDetector" begin
        detector = OpenCV.SimpleBlobDetector_create()
        kps = OpenCV.detect(detector, img_gray)
        @test length(kps) > 0
    end
end
