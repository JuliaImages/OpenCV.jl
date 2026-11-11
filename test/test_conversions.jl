# Coverage for the cpp<->julia conversion layer (mat_conversion.jl,
# types_conversion.jl): every supported dtype, Scalar tuples of each arity, and
# Vec / Array-of-Scalar / Array-of-Vec conversions.

# Every element type with a cv::Mat depth, including the OpenCV 5 additions
# (CV_16F, CV_Bool, CV_32U, CV_64U, CV_64S).
const ALL_ELTYPES = (UInt8, Int8, UInt16, Int16, Int32, Float32, Float64,
                     Float16, Bool, UInt32, UInt64, Int64)

test_array(T, dims...) = T === Bool ? Array(isodd.(reshape(collect(1:prod(dims)), dims...))) :
                                      T.(reshape(collect(1:prod(dims)), dims...))

@testset "Mat <-> cv::Mat round-trip, all dtypes" begin
    for T in ALL_ELTYPES, nch in (1, 2, 3, 4)
        a = test_array(T, nch, 3, 4)               # dense Array{T,3} (channels,cols,rows)
        back = OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(a))
        @test eltype(back) == T
        @test size(back) == size(a)
        @test Array(back) == a
    end
end

# The type flag Julia builds must decode to the same depth/channels in C++. With a
# stale CV_CN_SHIFT (OpenCV 4 used 3, OpenCV 5 uses 5) OpenCV reads back the wrong
# channel count, which `cv::flip` then exposes by moving the wrong number of bytes
# per pixel.
@testset "type flag encoding matches OpenCV 5" begin
    @test OpenCV.CV_CN_SHIFT == 5
    @test OpenCV.CV_MAKETYPE(OpenCV.CV_8U, 3) == 64          # CV_8UC3
    @test OpenCV.CV_MAKETYPE(OpenCV.CV_32F, 2) == 37         # CV_32FC2
    @test OpenCV.CV_MAT_DEPTH(OpenCV.CV_MAKETYPE(OpenCV.CV_64S, 4)) == OpenCV.CV_64S
    @test OpenCV.CV_MAT_CN(OpenCV.CV_MAKETYPE(OpenCV.CV_16F, 4)) == 4
    for T in ALL_ELTYPES, nch in (1, 3, 4)
        a = test_array(T, nch, 5, 2)
        rets = OpenCV.jlopencv_core_Mat_mutable_data(OpenCV.julia_to_cpp(a))
        @test rets[2] == OpenCV.CV_MAKETYPE(OpenCV._cv_depth(T), nch)   # type()
        @test rets[3] == nch                                            # channels()
        @test (rets[4], rets[5]) == (5, 2)                              # cols, rows
        # flip around the vertical axis reverses whole pixels along the column axis.
        @test Array(OpenCV.flip(a, 1)) == a[:, end:-1:1, :]
    end
    @test_throws OpenCV.OpenCVError OpenCV.julia_to_cpp(zeros(UInt8, OpenCV.CV_CN_MAX + 1, 2, 2))
end

# An input OpenCV cannot borrow (no strides, or strides out of order) is first copied
# into a dense array. The returned Mat used to borrow that copy's memory, which nothing
# kept alive: after a collection it read whatever the allocator put there next.
@testset "julia_to_cpp of a copied input owns its pixels" begin
    a = rand(UInt8, 3, 20, 10)
    for input in (view(a, :, collect(1:20), :),                                 # not strided
                  PermutedDimsArray(permutedims(a, (3, 2, 1)), (3, 2, 1)))     # strides descending
        m = OpenCV.julia_to_cpp(input)
        GC.gc()
        _ = [fill(0xAB, size(a)) for _ in 1:1000]   # reuse whatever the collection freed
        @test collect(OpenCV.cpp_to_julia(m)) == a
    end
end

@testset "Scalar tuple conversions (all arities)" begin
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(()))                == (0.0, 0.0, 0.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((7.0,)))            == (7.0, 0.0, 0.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((7.0, 8.0)))        == (7.0, 8.0, 0.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((7.0, 8.0, 9.0)))   == (7.0, 8.0, 9.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((1.0, 2.0, 3.0, 4.0))) == (1.0, 2.0, 3.0, 4.0)
end


# `julia_to_cpp` hands cv::Mat raw pointers to Julia-owned size and step arrays. A collection
# triggered by another thread before the constructor copies them used to free those arrays,
# so the Mat read garbage dimensions: an `s >= 0` assertion, or a multi-terabyte allocation.
# The race needs a second thread to collect, so on one thread this only checks the round-trip.
# Both loops yield, so tasks that end up sharing a thread still take turns.
@testset "julia_to_cpp keeps its size arrays alive under concurrent GC" begin
    a = zeros(UInt8, 1, 640, 480)
    roundtrip_ok() = size(OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(a))) == size(a)
    if Threads.nthreads() == 1
        @test roundtrip_ok()
    else
        stop = Threads.Atomic{Bool}(false)
        collectors = [Threads.@spawn(while !stop[]
            _ = [Vector{Int32}(undef, 2) for _ in 1:10_000]
            GC.gc(false)
            yield()
        end) for _ in 1:max(1, Threads.nthreads() ÷ 2)]
        converters = [Threads.@spawn begin
            bad = 0
            deadline = time() + 15
            while time() < deadline
                bad += !roundtrip_ok()
                yield()
            end
            bad
        end for _ in 1:max(1, Threads.nthreads() ÷ 2)]
        results = try
            fetch.(converters)
        finally
            stop[] = true
            foreach(wait, collectors)
        end
        @test sum(results) == 0
    end
end
