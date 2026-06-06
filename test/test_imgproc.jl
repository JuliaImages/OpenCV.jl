# Create a random image
img = rand(UInt8 , 3, 500, 500)

# Test input as AbstractArray and cvtColor
img_gray = OpenCV.cvtColor(img, OpenCV.COLOR_RGB2GRAY)

@test size(img_gray, 1) == 1 && size(img_gray, 2) == size(img, 2) && size(img_gray, 3) == size(img, 3)

# Exception test
try
    # This should throw an error
    OpenCV.cvtColor(img_gray, OpenCV.COLOR_RGB2GRAY)
    exit(1)
catch
    # Error caught so we can continue
end

ve = view(img, :,200:300, 200:300)

# Auto-conversion from-to OpenCV types
ve_gray = OpenCV.cvtColor(ve, OpenCV.COLOR_RGB2GRAY)

# Shape check
@test size(ve_gray)[1] == 1 && size(img_gray)[1] == 1

@testset "issue #18: drawing functions accept Vector{Array{Int32,3}}" begin
    # The generated wrappers annotate vector-of-array arguments as the covariant
    # `AbstractVector{<:InputArray}`, so callers no longer need to construct
    # `OpenCV.InputArray[…]` element-typed vectors. Confirm that a natural
    # `Vector{Array{Int32,3}}` dispatches.
    canvas = OpenCV.Mat(zeros(UInt8, 3, 64, 64))
    pts_array = Int32.(reshape([10 5; 20 30; 50 20; 30 10]', 2, 1, 4))
    pts = [pts_array]
    @test pts isa Vector{Array{Int32, 3}}
    @test_nowarn OpenCV.polylines(canvas, pts, false, (0, 255, 255); thickness=1)
    @test_nowarn OpenCV.fillPoly(canvas, pts, (255, 0, 0))
    @test_nowarn OpenCV.drawContours(canvas, pts, -1, (0, 255, 0))
end
