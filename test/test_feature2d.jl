@testset "features2d" begin
    img_gray = OpenCV.imread(joinpath(test_dir, "shared", "pic1.png"), OpenCV.IMREAD_GRAYSCALE)

    @testset "_copy_cxx_value(::KeyPoint) preserves fields" begin
        kp = OpenCV.KeyPoint(1.0, 2.0, 3.0, 4.0, 5.0, Int64(6), Int64(7))
        c = OpenCV._copy_cxx_value(kp)
        @test c isa OpenCV.KeyPoint
        @test c.pt.x == 1.0 && c.pt.y == 2.0
        @test c.size == 3.0 && c.angle == 4.0 && c.response == 5.0
        @test c.octave == 6 && c.class_id == 7
    end

    @testset "ORB detect+compute+match" begin
        orb = OpenCV.ORB_create()
        kps = OpenCV.detect(orb, img_gray)
        @test length(kps) > 0
        # Regression guard for the detect->compute use-after-free: force the C++
        # std::vector<KeyPoint> behind `kps` to be freed before compute reads it.
        # If keypoints were dangling views, compute would corrupt octave and trip
        # ORB's `inv_scale_x > 0` assertion.
        GC.gc(true)
        @test eltype(kps) == OpenCV.KeyPoint
        @test all(kp -> kp.octave isa Integer, kps)
        kps2, desc = OpenCV.compute(orb, img_gray, kps)
        @test length(kps2) == length(kps)
        # OpenCV.jl stores cv::Mat as (channels, cols, rows). The ORB descriptor
        # matrix is length(kps) rows x descriptorSize cols x 1 channel, so the
        # keypoint axis is dim 3 and the descriptor-byte axis is dim 2.
        @test size(desc, 3) == length(kps)
        @test size(desc, 2) == OpenCV.descriptorSize(orb)

        bf = OpenCV.BFMatcher_create(OpenCV.NORM_HAMMING, true)
        matches = OpenCV.match(bf, desc, desc)
        # crossCheck keeps only mutually-best matches; ORB on a real image emits
        # some identical (duplicate) descriptors, so the count is <= length(kps).
        @test 0 < length(matches) <= length(kps)
    end

    @testset "SimpleBlobDetector" begin
        detector = OpenCV.SimpleBlobDetector_create()
        kps = OpenCV.detect(detector, img_gray)
        @test length(kps) > 0
    end
end
