# ArUco / ChArUco (objdetect, OpenCV.aruco submodule) on synthetic images.
#
# Layout reminder: a grayscale H×W cv::Mat is a Julia (1, W, H) array, so pixel
# (x, y) of a marker image is `img[1, x+1, y+1]`.

const aruco = OpenCV.aruco

@testset "ArUco" begin
    dict = aruco.getPredefinedDictionary(aruco.DICT_4X4_50)

    @testset "generateImageMarker" begin
        m = aruco.generateImageMarker(dict, 7, 60)
        @test size(m) == (1, 60, 60)
        @test eltype(m) == UInt8
        # borderBits = 1: the outer cell ring (60 / 6 = 10 px) is black.
        @test all(==(0x00), m[1, 1:10, :])
        @test all(==(0x00), m[1, :, 51:60])
        @test any(==(0xff), m)
    end

    @testset "DetectorParameters property setters" begin
        params = aruco.DetectorParameters()
        params.minMarkerPerimeterRate = 0.01
        @test params.minMarkerPerimeterRate ≈ 0.01
        params.adaptiveThreshWinSizeMax = 31
        @test params.adaptiveThreshWinSizeMax == 31
        params.cornerRefinementMethod = aruco.CORNER_REFINE_SUBPIX
        @test params.cornerRefinementMethod == aruco.CORNER_REFINE_SUBPIX
    end

    @testset "ArucoDetector.detectMarkers" begin
        side = 100
        # (id, x0, y0): top-left pixel of each marker, all with a quiet zone of
        # at least half a marker around them.
        placed = [(3, 50, 50), (17, 250, 60), (42, 450, 220)]
        W, H = 600, 400
        canvas = fill(0xff, 1, W, H)
        for (id, x0, y0) in placed
            m = aruco.generateImageMarker(dict, id, side)
            canvas[1, x0+1:x0+side, y0+1:y0+side] .= m[1, :, :]
        end

        params = aruco.DetectorParameters()
        params.minMarkerPerimeterRate = 0.01
        detector = aruco.ArucoDetector(dict, params, aruco.RefineParameters())
        corners, ids, rejected = aruco.detectMarkers(detector, canvas)

        ids = vec(Int.(ids))
        @test sort(ids) == sort(first.(placed))
        @test length(corners) == length(placed)
        for (id, x0, y0) in placed
            k = findfirst(==(id), ids)
            @test k !== nothing
            c = corners[k]                    # 4 corners × (x, y): Julia size (2, 4, 1)
            @test size(c) == (2, 4, 1)
            # Clockwise from the top-left; OpenCV's own test puts the corners on
            # the first/last pixel of the marker.
            expected = [(x0, y0), (x0 + side - 1, y0),
                        (x0 + side - 1, y0 + side - 1), (x0, y0 + side - 1)]
            for (j, (ex, ey)) in enumerate(expected)
                @test abs(c[1, j, 1] - ex) <= 1
                @test abs(c[2, j, 1] - ey) <= 1
            end
        end
    end

    @testset "ChArUco board" begin
        squaresX, squaresY = 5, 7
        board = aruco.CharucoBoard(OpenCV.Size{Int32}(squaresX, squaresY), 0.04, 0.02, dict)
        img = aruco.generateImage(board, OpenCV.Size{Int32}(500, 700); marginSize = 20)
        @test size(img) == (1, 500, 700)

        detector = aruco.CharucoDetector(board, aruco.CharucoParameters(),
                                         aruco.DetectorParameters(), aruco.RefineParameters())
        charucoCorners, charucoIds, markerCorners, markerIds = aruco.detectBoard(detector, img)

        # Every inner chessboard corner of an unoccluded, fronto-parallel board.
        ncorners = (squaresX - 1) * (squaresY - 1)
        @test length(charucoIds) == ncorners
        @test sort(vec(Int.(charucoIds))) == collect(0:ncorners-1)
        @test size(charucoCorners) == (2, 1, ncorners)
        # Markers sit on half of the squares.
        @test length(markerCorners) == (squaresX * squaresY) ÷ 2
        @test length(markerIds) == (squaresX * squaresY) ÷ 2
    end
end
