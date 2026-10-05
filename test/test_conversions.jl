# Coverage for the cpp<->julia conversion layer (mat_conversion.jl,
# types_conversion.jl): every supported dtype, Scalar tuples of each arity, and
# Vec / Array-of-Scalar / Array-of-Vec conversions.

@testset "Mat <-> cv::Mat round-trip, all dtypes" begin
    for T in (UInt8, Int8, UInt16, Int16, Int32, Float32, Float64)
        a = T.(reshape(collect(1:24), 2, 3, 4))   # dense Array{T,3} (channels,cols,rows)
        back = OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(a))
        @test eltype(back) == T
        @test size(back) == size(a)
        @test Array(back) == a
    end
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
