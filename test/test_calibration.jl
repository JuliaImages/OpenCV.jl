function parse_corners_file(file)
    open(file, "r") do o
        readuntil(o, "rows:")
        rows = parse(Int, readuntil(o, "\n"))
        readuntil(o, "cols:")
        cols = parse(Int, readuntil(o, "\n"))
        readuntil(o, "[")
        txt = readuntil(o, "]")
        num = parse.(Float32, split(txt, ','))
        corners = reverse(permutedims(Tuple{Float32, Float32}.(eachslice(reshape(num, 2, cols, rows), dims=(2,3)))); dims = 1)
        return corners, (rows, cols)
    end
end

@testset "detecting corners" begin

    path = joinpath(test_dir, "cameracalibration")

    corners_n = map(1:7) do i
        file = joinpath(path, "chess_corners$i.dat")
        parse_corners_file(file)
    end
    imgpointss = first.(corners_n)
    n_corners = last(first(corners_n))
    nfiles = length(imgpointss)

    img_file = joinpath(path, "chess1.png")
    sz = size(load(img_file))[[2,3]]

    objpoints = Tuple.(CartesianIndices((0:(n_corners[1] - 1), 0:(n_corners[2] - 1), 0:0)))
    cammat = convert(Matrix{Float64}, I(3))
    dist = Vector{Float64}(undef, 5)
    r = [Vector{Float64}(undef, 3) for _ in 1:nfiles]
    t = [Vector{Float64}(undef, 3) for _ in 1:nfiles]
    flags = 0
    criteria = OpenCV.TermCriteria(OpenCV.TERM_CRITERIA_EPS + OpenCV.TERM_CRITERIA_MAX_ITER, 30, 0.001)

    rms, _cammat, _dist, _r, _t = OpenCV.calibrateCamera(OpenCV.InputArray[Float32.(reshape(stack(objpoints), 3, 1, :)) for _ in 1:nfiles], 
                                                         OpenCV.InputArray[Float32.(reshape(stack(imgpoints), 2, 1, :)) for imgpoints in imgpointss], 
                                                         OpenCV.Size{Int32}(sz...),  
                                                         OpenCV.Mat(reshape(cammat, 1, 3, 3)), 
                                                         OpenCV.Mat(reshape(dist, 1, 1, 5)), 
                                                         OpenCV.InputArray[OpenCV.Mat(reshape(ri, 1, 1, 3)) for ri in r], 
                                                         OpenCV.InputArray[OpenCV.Mat(reshape(ti, 1, 1, 3)) for ti in t], flags, criteria)

    @test rms < 1
    @test reshape(_cammat, 3, :) == cammat
    @test vec(_dist) == dist
    @test all(zip(_r, r)) do (_r, r)
        vec(_r) == r
    end
    @test all(zip(_t, t)) do (_t, t)
        vec(_t) == t
    end

end

