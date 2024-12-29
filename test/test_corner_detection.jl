function _detect_corners(file, n_corners)
    img = load(file)
    gry = img[1:1, :, :]
    cv_n_corners = OpenCV.Size{Int32}(n_corners...)
    _cv_corners = OpenCV.Mat(Array{Float32}(undef, 2, 1, prod(n_corners)))
    ret, cv_corners = OpenCV.findChessboardCorners(gry, cv_n_corners, _cv_corners, 0)
    @assert ret "Failed to detect any corners!"
    corners = reshape(vec.(eachslice(cv_corners, dims = 3)), n_corners)
    return corners
end

function parse_corners_file(file)
    open(file, "r") do o
        readuntil(o, "rows:")
        rows = parse(Int, readuntil(o, "\n"))
        readuntil(o, "cols:")
        cols = parse(Int, readuntil(o, "\n"))
        readuntil(o, "[")
        corners = [Float32[] for i in 1:cols, j in 1:rows]
        for i in 1:cols*rows, j in 1:2
            if i == cols*rows && j == 2
                break
            end
            push!(corners[i], parse(Float32, readuntil(o, ",")))
        end
        push!(corners[cols*rows], parse(Float32, readuntil(o, "]")))

        return reverse(permutedims(corners, (2, 1)); dims = 1), (rows, cols)
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

function test_one(img_file, data_file)
    corners, n_corners = parse_corners_file(data_file)
    detected_corners = _detect_corners(img_file, n_corners)
    calc_error(corners, detected_corners)
end

@testset "detecting corners" begin

    path = joinpath(test_dir, "cameracalibration")
    list = get_list(joinpath(path, "chessboard_list.dat"))

    k, v = first(list)
    test_one(joinpath(path, k), joinpath(path, v)) # why do we need this?

    @testset "in $k" for (k, v) in list

        img_file = joinpath(path, k)
        data_file = joinpath(path, v)

        @test test_one(img_file, data_file) < 1

    end
end
