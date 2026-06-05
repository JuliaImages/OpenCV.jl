@testset "DescriptorMatcher" begin
    img = OpenCV.imread(joinpath(test_dir, "shared", "pic1.png"), OpenCV.IMREAD_GRAYSCALE)
    orb = OpenCV.ORB_create()
    kps = OpenCV.detect(orb, img)
    _, desc = OpenCV.compute(orb, img, kps)
    n = size(desc, 3)               # number of descriptors (rows; see Mat layout)

    @testset "_copy_cxx_value(::DMatch) preserves fields" begin
        dm = OpenCV.DMatch(Int64(3), Int64(5), Int64(7), 1.5)
        c = OpenCV._copy_cxx_value(dm)
        @test c isa OpenCV.DMatch
        @test c.queryIdx == 3
        @test c.trainIdx == 5
        @test c.imgIdx == 7
        @test c.distance == 1.5
    end

    @testset "match: DMatch vector survives GC (no use-after-free)" begin
        bf = OpenCV.BFMatcher_create(OpenCV.NORM_HAMMING, false)
        matches = OpenCV.match(bf, desc, desc)
        GC.gc(true)                 # free the C++ std::vector<DMatch> behind `matches`
        @test length(matches) == n  # one best match per query descriptor
        @test eltype(matches) == OpenCV.DMatch
        # Reading fields after GC must be safe (value-copied), not dangling.
        @test all(m -> m.distance == 0, matches)        # self-match => identical
        @test all(m -> 0 <= m.queryIdx < n, matches)
        @test all(m -> 0 <= m.trainIdx < n, matches)
    end

    @testset "julia_to_cpp(Vector{DMatch}) round-trips" begin
        bf = OpenCV.BFMatcher_create(OpenCV.NORM_HAMMING, false)
        matches = OpenCV.match(bf, desc, desc)
        rt = OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(matches))   # Julia -> C++ -> Julia
        @test length(rt) == length(matches)
        @test all(i -> rt[i].queryIdx == matches[i].queryIdx &&
                       rt[i].trainIdx == matches[i].trainIdx &&
                       rt[i].distance == matches[i].distance, eachindex(matches))
    end

    @testset "knnMatch: nested Vector{Vector{DMatch}} survives GC" begin
        bf = OpenCV.BFMatcher_create(OpenCV.NORM_HAMMING, false)
        knn = OpenCV.knnMatch(bf, desc, desc, Int64(2))
        GC.gc(true)
        @test length(knn) == n
        @test all(v -> 1 <= length(v) <= 2, knn)
        @test all(v -> all(m -> m isa OpenCV.DMatch, v), knn)
        @test all(v -> first(v).distance == 0, knn)     # nearest neighbour is itself
    end
end
