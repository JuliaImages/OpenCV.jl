# Coverage for the hand-written core types and dispatch helpers:
# Mat / Vec (AbstractArray interface), the typestructs, OpenCVError, and the
# scalar cpp<->julia identity/Tuple/Bool conversions in cv_cxx.jl.

@testset "Mat AbstractArray interface" begin
    data = reshape(collect(UInt8, 1:24), 2, 3, 4)
    m = OpenCV.Mat(data)
    @test m isa AbstractArray{UInt8,3}
    @test size(m) == (2, 3, 4)
    @test axes(m) == axes(data)
    @test IndexStyle(typeof(m)) == IndexLinear()
    @test strides(m) == strides(data)
    @test pointer(m) == pointer(data)
    @test Base.unsafe_convert(Ptr{UInt8}, m) == Base.unsafe_convert(Ptr{UInt8}, data)
    @test m[1, 2, 3] == data[1, 2, 3]      # cartesian getindex
    @test m[5] == data[5]                  # linear getindex
    m[1, 1, 1] = 0x63                       # cartesian setindex!
    @test m[1, 1, 1] == 0x63
    m[2] = 0x58                             # linear setindex!
    @test m[2] == 0x58
    mc = copy(m)
    @test mc == m && mc.data !== m.data
    md = deepcopy(m)
    @test md == m && md.data !== m.data
    @test_throws BoundsError m[100]
end

@testset "Vec AbstractArray interface" begin
    v = OpenCV.Vec{Int32,3}(Int32[10, 20, 30])
    @test v isa AbstractArray{Int32,1}
    @test size(v) == (3,)
    @test length(v) == 3
    @test axes(v) == (Base.OneTo(3),)
    @test IndexStyle(typeof(v)) == IndexLinear()
    @test strides(v) == (1,)
    @test pointer(v) == pointer(v.data)
    @test v[2] == 20
    v[2] = 99
    @test v[2] == 99
    @test copy(v) == v
    @test deepcopy(v) == v
    @test_throws BoundsError v[9]
    @test_throws DimensionMismatch OpenCV.Vec{Int32,3}(Int32[1, 2])
end

@testset "typestructs construct" begin
    @test OpenCV.Point{Int32}(1, 2).y == 2
    @test OpenCV.Point3{Float32}(1, 2, 3).z == 3
    @test OpenCV.Size{Int32}(4, 5).width == 4
    @test OpenCV.Rect{Int32}(1, 2, 3, 4).width == 3
    rr = OpenCV.RotatedRect(OpenCV.Point{Float32}(1, 2), OpenCV.Size{Float32}(3, 4), 5.0f0)
    @test rr.angle == 5.0f0
    @test OpenCV.Range(1, 10).start == 1
    @test OpenCV.TermCriteria(1, 2, 3.0).epsilon == 3.0
    @test OpenCV.cvComplex{Float64}(1.0, 2.0).im == 2.0
end

@testset "OpenCVError" begin
    e = OpenCV.OpenCVError("boom")
    @test e isa Exception
    @test e.msg == "boom"
    io = IOBuffer()
    showerror(io, e)
    @test occursin("OpenCVError: boom", String(take!(io)))
    # _cv_depth / _julia_eltype raise OpenCVError for unsupported types/flags.
    @test_throws OpenCV.OpenCVError OpenCV._cv_depth(String)
    @test_throws OpenCV.OpenCVError OpenCV._julia_eltype(999999, 1)
end

@testset "scalar cpp<->julia conversions" begin
    @test OpenCV.cpp_to_julia(42) === 42                 # identity fallback
    @test OpenCV.julia_to_cpp(42) === 42                 # identity fallback
    @test OpenCV.cpp_to_julia((1, 2, 3)) == (1, 2, 3)    # Tuple, element-wise
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(true)) === true    # Bool <-> CxxBool
    @test OpenCV.cpp_to_julia(OpenCV.julia_to_cpp(false)) === false
end
