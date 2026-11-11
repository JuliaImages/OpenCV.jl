# Smoke tests for the modules newly wrapped in OpenCV.jl 5 (photo, ml, ximgproc,
# xphoto, xfeatures2d, stitching), on synthetic data only. Dense optical flow and
# the trackers are in test_video.jl; ArUco in test_aruco.jl; QR codes in
# test_objdetect.jl.

@testset "photo: inpaint" begin
    src = fill(0x64, 1, 64, 64)
    mask = zeros(UInt8, 1, 64, 64)
    hole = 28:37
    src[1, hole, hole] .= 0x00
    mask[1, hole, hole] .= 0xff
    dst = OpenCV.inpaint(src, mask, 3.0, OpenCV.INPAINT_TELEA)
    @test size(dst) == size(src)
    @test all(v -> abs(Int(v) - 100) <= 5, dst[1, hole, hole])
end

@testset "ml" begin
    ml = OpenCV.ml
    # Two separable clusters around (1, 1) and (6, 6); samples are N rows × 2 cols.
    pts = [(1 + 0.3i, 1 + 0.2j) for i in -2:2 for j in -2:2]
    append!(pts, [(6 + 0.3i, 6 + 0.2j) for i in -2:2 for j in -2:2])
    n = length(pts)
    samples = Array{Float32, 3}(undef, 1, 2, n)
    for (k, (x, y)) in enumerate(pts)
        samples[1, 1, k] = x
        samples[1, 2, k] = y
    end
    labels = Int32.(reshape([fill(0, n ÷ 2); fill(1, n ÷ 2)], 1, 1, n))
    query = Float32.(reshape([1.2, 0.9, 5.8, 6.3], 1, 2, 2))   # one point per cluster

    @testset "SVM" begin
        svm = ml.SVM_create()
        ml.setType(svm, ml.SVM_C_SVC)
        ml.setKernel(svm, ml.SVM_LINEAR)
        ml.setC(svm, 1.0)
        ml.setTermCriteria(svm, OpenCV.TermCriteria(OpenCV.TERM_CRITERIA_MAX_ITER, 100, 1e-6))
        @test ml.train(svm, samples, ml.ROW_SAMPLE, labels)
        @test ml.isTrained(svm)
        _, pred = ml.predict(svm, query)
        @test vec(pred) == Float32[0, 1]
    end

    @testset "KNearest" begin
        knn = ml.KNearest_create()
        @test ml.train(knn, samples, ml.ROW_SAMPLE, Float32.(labels))
        _, results, neighbours, dist = ml.findNearest(knn, query, 3)
        @test vec(results) == Float32[0, 1]
        @test size(neighbours) == (1, 3, 2)
    end
end

@testset "ximgproc" begin
    ximgproc = OpenCV.ximgproc

    @testset "thinning" begin
        src = zeros(UInt8, 1, 80, 60)
        src[1, 11:70, 25:35] .= 0xff                     # 60 × 11 px bar
        thin = ximgproc.thinning(src; thinningType = ximgproc.THINNING_ZHANGSUEN)
        @test size(thin) == size(src)
        nthin = count(!iszero, thin)
        @test 20 < nthin < 150                           # roughly a one-pixel line
        @test all(iszero, thin[src .== 0])               # skeleton stays inside the bar
    end

    @testset "guidedFilter" begin
        img = fill(0x4d, 1, 32, 32)
        out = ximgproc.guidedFilter(img, img, 4, 100.0)
        @test size(out) == size(img)
        @test all(==(0x4d), out)                         # constant image is a fixed point
    end
end

@testset "xphoto: SimpleWB" begin
    xphoto = OpenCV.xphoto
    # A strong colour cast: B in 20:60, G in 80:120, R in 180:220.
    img = Array{UInt8, 3}(undef, 3, 64, 64)
    for j in 1:64, i in 1:64
        t = (7i + 13j) % 41
        img[1, i, j] = 20 + t
        img[2, i, j] = 80 + t
        img[3, i, j] = 180 + t
    end
    channel_means(a) = [sum(Float64, a[c, :, :]) / (size(a, 2) * size(a, 3)) for c in 1:3]
    wb = xphoto.createSimpleWB()
    out = xphoto.balanceWhite(wb, img)
    @test size(out) == size(img)
    before, after = channel_means(img), channel_means(out)
    @test maximum(before) - minimum(before) > 150
    @test maximum(after) - minimum(after) < 30
end

@testset "xfeatures2d: AKAZE" begin
    # 8×8 checkerboard of 25 px squares on a grey background.
    img = fill(0x80, 1, 240, 240)
    for j in 0:7, i in 0:7
        img[1, 21+25i:45+25i, 21+25j:45+25j] .= isodd(i + j) ? 0x00 : 0xff
    end
    akaze = OpenCV.xfeatures2d.AKAZE_create()
    kps = OpenCV.detect(akaze, img)
    @test length(kps) > 0
    @test eltype(kps) == OpenCV.KeyPoint
    kps2, desc = OpenCV.detectAndCompute(akaze, img, OpenCV.CxxMat())
    @test length(kps2) > 0
    @test size(desc, 3) == length(kps2)               # one descriptor row per keypoint
    @test size(desc, 2) == OpenCV.descriptorSize(akaze)
end

@testset "stitching: Stitcher_create" begin
    stitcher = OpenCV.Stitcher_create(OpenCV.Stitcher_PANORAMA)
    @test OpenCV.registrationResol(stitcher) ≈ 0.6
end
