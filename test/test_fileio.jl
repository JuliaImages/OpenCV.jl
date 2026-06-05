tmpdir = mktempdir()

images_path = joinpath(opencv_extra_path, "testdata", "python", "images")
if !isdir(images_path)
    @info "Skipping test_fileio: $(images_path) not found in artifact"
    images = String[]
else
    images = readdir(images_path, join=true)
end

bmp_images = filter(endswith(".bmp"), images)
# jp2_images = filter(endswith(".jp2"), images) # Not available
jpg_images = filter(endswith(".jpg"), images)
png_images = filter(endswith(".png"), images)
tiff_images = filter(endswith(".tiff"), images)

@testset "BMP" begin
    for (idx, img_path) in enumerate(bmp_images)
        img1 = load(img_path)
        f = joinpath(tmpdir, "img_$idx.bmp")
        save(f, img1)
        img2 = load(f)
        @test img1 == img2
    end
end

# @testset "JP2" begin
#     img1 = rand(UInt8, 3, 1024, 1024) |> OpenCV.Mat
#     f = joinpath(tmpdir, "img.jp2")
#     save(f, img1)
#     img2 = load(f)
#     @test OpenCV.PSNR(img1, img2) > 15
# end

@testset "JPG" begin
    for (idx, img_path) in enumerate(jpg_images)
        img1 = load(img_path)
        f = joinpath(tmpdir, "img_$idx.jpg")
        save(f, img1)
        img2 = load(f)
        @test OpenCV.PSNR(img1, img2) > 30
    end
end

@testset "PNG" begin
    for (idx, img_path) in enumerate(png_images)
        img1 = load(img_path)
        f = joinpath(tmpdir, "img_$idx.png")
        save(f, img1)
        img2 = load(f)
        @test img1 == img2
    end
end

@testset "TIFF" begin
    for (idx, img_path) in enumerate(tiff_images)
        img1 = load(img_path)
        f = joinpath(tmpdir, "img_$idx.tiff")
        save(f, img1)
        img2 = load(f)
        @test img1 == img2
    end
end

@testset "issue #58: imdecode(Vector{UInt8})" begin
    img = rand(UInt8, 3, 64, 48)
    _, buf = OpenCV.imencode(".png", img)
    @test buf isa Vector{UInt8}
    decoded = OpenCV.imdecode(buf, -1)
    @test size(decoded) == size(img)
    @test decoded == img
    @test size(OpenCV.imdecode(buf)) == size(img)
end

@testset "FileIO Stream + flags/params" begin
    img = OpenCV.Mat(rand(UInt8, 3, 64, 48))

    # save(Stream)/load(Stream) lossless PNG round-trip.
    io = IOBuffer()
    OpenCV.save(Stream{format"PNG"}(io), img)
    seekstart(io)
    img2 = OpenCV.load(Stream{format"PNG"}(io))
    @test size(img2) == size(img)
    @test img2 == img

    # save(Stream, image, params)
    io2 = IOBuffer()
    OpenCV.save(Stream{format"PNG"}(io2), img, Int32[OpenCV.IMWRITE_PNG_COMPRESSION, 1])
    @test length(take!(io2)) > 8

    # load(File, flags) and load(Stream, flags)
    p = joinpath(test_dir, "shared", "pic1.png")
    gray = OpenCV.load(File{format"PNG"}(p), Int64(OpenCV.IMREAD_GRAYSCALE))
    @test size(gray, 1) == 1
    io3 = IOBuffer(); OpenCV.save(Stream{format"PNG"}(io3), img); seekstart(io3)
    gray2 = OpenCV.load(Stream{format"PNG"}(io3), Int64(OpenCV.IMREAD_GRAYSCALE))
    @test size(gray2, 1) == 1

    # save(File, image, params)
    out = joinpath(tmpdir, "params.png")
    OpenCV.save(File{format"PNG"}(out), img, Int32[OpenCV.IMWRITE_PNG_COMPRESSION, 3])
    @test isfile(out)
end

@testset "show image/png" begin
    img = OpenCV.Mat(rand(UInt8, 3, 32, 24))
    io = IOBuffer()
    show(io, MIME("image/png"), img)
    bytes = take!(io)
    @test length(bytes) > 8
    @test bytes[1:8] == UInt8[0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]  # PNG magic
end