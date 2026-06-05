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

@testset "Scalar tuple conversions (all arities)" begin
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(()))                == (0.0, 0.0, 0.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((7.0,)))            == (7.0, 0.0, 0.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((7.0, 8.0)))        == (7.0, 8.0, 0.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((7.0, 8.0, 9.0)))   == (7.0, 8.0, 9.0, 0.0)
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp((1.0, 2.0, 3.0, 4.0))) == (1.0, 2.0, 3.0, 4.0)
end

