const Point = Tuple{Float32, Float32} # just for conviniencve 

function detect_corners(img_file, n_corners)
    img = load(img_file)
    gry = img[1:1, :, :]
    corners = Matrix{Tuple{Float32,Float32}}(undef, n_corners)
    ret, _ = OpenCV.findChessboardCorners(gry, OpenCV.Size{Int32}(n_corners...), OpenCV.Mat(reshape(reinterpret(Float32, corners), 2, 1, prod(n_corners))), 0)
    return corners
end

function parse_corners_file(file)
    open(file, "r") do o
        readuntil(o, "rows:")
        rows = parse(Int, readuntil(o, "\n"))
        readuntil(o, "cols:")
        cols = parse(Int, readuntil(o, "\n"))
        readuntil(o, "[")
        txt = readuntil(o, "]")
        num = parse.(Float32, split(txt, ','))
        corners = reverse(permutedims(Point.(eachslice(reshape(num, 2, cols, rows), dims=(2,3)))); dims = 1)
        return corners, (rows, cols)
    end
end

function get_list(file)
    doc = read(file, LazyNode)
    str = filter(≠('"'), simple_value(doc[end][end]))
    list = Dict{String, String}()
    for line in split(str, '\n')
        img_file, data_file = split(line)
        list[img_file] = data_file
    end
    return list
end

function calc_error(ps1, ps2)
    s = 0.0
    for (p1, p2) in zip(ps1, ps2)
        s += LinearAlgebra.norm_sqr(p1 .- p2)
    end
    sqrt(s/length(ps1))
end

function calc_error(img_file::AbstractString, data_file::AbstractString)
    corners, n_corners = parse_corners_file(data_file)
    detected_corners = detect_corners(img_file, n_corners)
    calc_error(corners, detected_corners)
end

@testset "detecting corners" begin

    path = joinpath(test_dir, "cameracalibration")
    list = get_list(joinpath(path, "chessboard_list.dat"))

    @testset "in $k" for (k, v) in list

        img_file = joinpath(path, k)
        data_file = joinpath(path, v)

        @test calc_error(img_file, data_file) < 2

    end
end
