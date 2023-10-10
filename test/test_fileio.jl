tmpdir = mktempdir()

images_path = joinpath(opencv_extra_path, "testdata", "python", "images")
images = readdir(images_path, join=true)

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