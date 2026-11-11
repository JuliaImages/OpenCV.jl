@testset "issue #31: VideoWriter_fourcc" begin
    # Reference value from Python: cv2.VideoWriter_fourcc(*"h264") == 875967080.
    @test OpenCV.VideoWriter_fourcc("h264"...) == 875967080
    @test OpenCV.VideoWriter_fourcc("h264") == 875967080
    @test OpenCV.VideoWriter_fourcc("mp4v") == 1983148141
    @test OpenCV.VideoWriter_fourcc("h264"...) == OpenCV.VideoWriter_fourcc("h264")
    @test_throws ArgumentError OpenCV.VideoWriter_fourcc("h26")
    @test_throws ArgumentError OpenCV.VideoWriter_fourcc("h2645")
end

# Smooth synthetic texture; `shifted_texture(dx, dy)` is the same scene moved by
# (+dx, +dy) pixels, so dense optical flow from the first to the second is (dx, dy).
texture(x, y) = 128 + 40sin(0.21x + 0.05y) + 30cos(0.13y - 0.07x) + 20sin(0.31x) * cos(0.17y)
function shifted_texture(dx, dy; W = 160, H = 120)
    img = Array{UInt8, 3}(undef, 1, W, H)
    for j in 1:H, i in 1:W
        img[1, i, j] = round(UInt8, clamp(texture(i - 1 - dx, j - 1 - dy), 0, 255))
    end
    return img
end

interior_mean(flow, c; border = 25) =
    (v = flow[c, 1+border:end-border, 1+border:end-border]; sum(v) / length(v))

@testset "dense optical flow" begin
    dx, dy = 3, 2
    prev, next = shifted_texture(0, 0), shifted_texture(dx, dy)

    @testset "calcOpticalFlowFarneback" begin
        flow = OpenCV.calcOpticalFlowFarneback(prev, next, OpenCV.CxxMat(),
                                               0.5, 3, 15, 3, 5, 1.2, 0)
        @test size(flow) == (2, size(prev, 2), size(prev, 3))   # (fx, fy) per pixel
        @test eltype(flow) == Float32
        @test interior_mean(flow, 1) ≈ dx atol = 0.5
        @test interior_mean(flow, 2) ≈ dy atol = 0.5
    end

    @testset "DISOpticalFlow" begin
        dis = OpenCV.DISOpticalFlow_create(OpenCV.DISOpticalFlow_PRESET_MEDIUM)
        flow = OpenCV.calc(dis, prev, next, OpenCV.CxxMat())
        @test size(flow) == (2, size(prev, 2), size(prev, 3))
        @test interior_mean(flow, 1) ≈ dx atol = 0.5
        @test interior_mean(flow, 2) ≈ dy atol = 0.5
    end

    @testset "optflow.calcOpticalFlowSparseToDense (contrib)" begin
        flow = OpenCV.optflow.calcOpticalFlowSparseToDense(prev, next)
        @test size(flow) == (2, size(prev, 2), size(prev, 3))
        @test interior_mean(flow, 1) ≈ dx atol = 0.75
        @test interior_mean(flow, 2) ≈ dy atol = 0.75
    end
end

# A textured 40×40 square on a black 3-channel frame, top-left pixel at (x0, y0).
function square_frame(x0, y0; W = 240, H = 240, s = 40)
    f = zeros(UInt8, 3, W, H)
    for j in 1:s, i in 1:s
        v = 80 + 40 * ((((i - 1) ÷ 8) + ((j - 1) ÷ 8)) % 2) + 3 * ((i + 2j) % 20)
        f[1, x0 + i, y0 + j] = v
        f[2, x0 + i, y0 + j] = 255 - v
        f[3, x0 + i, y0 + j] = v ÷ 2 + 60
    end
    return f
end

@testset "trackers" begin
    # Pixel tolerance on the final box. MIL drifts on this synthetic texture (it is a
    # weak tracker), so it only has to keep overlapping the 40x40 square.
    trackers = (
        "TrackerMIL (video)"     => (() -> OpenCV.TrackerMIL_create(OpenCV.TrackerMIL_Params()), 39),
        "TrackerCSRT (tracking)" => (() -> OpenCV.TrackerCSRT_create(OpenCV.TrackerCSRT_Params()), 6),
    )
    @testset "$name" for (name, (make, tol)) in trackers
        tracker = make()
        x0, y0, step = 60, 80, (4, 3)
        OpenCV.init(tracker, square_frame(x0, y0), OpenCV.Rect{Int32}(x0, y0, 40, 40))
        ok, box = false, OpenCV.Rect{Int32}(0, 0, 0, 0)
        nframes = 5
        for k in 1:nframes
            ok, box = OpenCV.update(tracker, square_frame(x0 + step[1] * k, y0 + step[2] * k))
        end
        @test ok
        @test abs(box.x - (x0 + step[1] * nframes)) <= tol
        @test abs(box.y - (y0 + step[2] * nframes)) <= tol
    end
end
