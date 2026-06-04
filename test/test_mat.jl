# This file is adapted from test/abstractarray.jl from Julia.

# This file is a part of Julia. License is MIT: https://julialang.org/license

A_abs = rand(5,4,3)
A = OpenCV.Mat(A_abs)
@testset "Bounds checking" begin
    @test checkbounds(Bool, A, 1, 1, 1) == true
    @test checkbounds(Bool, A, 5, 4, 3) == true
    @test checkbounds(Bool, A, 0, 1, 1) == false
    @test checkbounds(Bool, A, 1, 0, 1) == false
    @test checkbounds(Bool, A, 1, 1, 0) == false
    @test checkbounds(Bool, A, 6, 4, 3) == false
    @test checkbounds(Bool, A, 5, 5, 3) == false
    @test checkbounds(Bool, A, 5, 4, 4) == false
    @test checkbounds(Bool, A, 1) == true           # linear indexing
    @test checkbounds(Bool, A, 60) == true
    @test checkbounds(Bool, A, 61) == false
    @test checkbounds(Bool, A, 2, 2, 2, 1) == true  # extra indices
    @test checkbounds(Bool, A, 2, 2, 2, 2) == false
    @test checkbounds(Bool, A, 1, 1)  == false
    @test checkbounds(Bool, A, 1, 12) == false
    @test checkbounds(Bool, A, 5, 12) == false
    @test checkbounds(Bool, A, 1, 13) == false
    @test checkbounds(Bool, A, 6, 12) == false
end

@testset "single CartesianIndex" begin
    @test checkbounds(Bool, A, CartesianIndex((1, 1, 1))) == true
    @test checkbounds(Bool, A, CartesianIndex((5, 4, 3))) == true
    @test checkbounds(Bool, A, CartesianIndex((0, 1, 1))) == false
    @test checkbounds(Bool, A, CartesianIndex((1, 0, 1))) == false
    @test checkbounds(Bool, A, CartesianIndex((1, 1, 0))) == false
    @test checkbounds(Bool, A, CartesianIndex((6, 4, 3))) == false
    @test checkbounds(Bool, A, CartesianIndex((5, 5, 3))) == false
    @test checkbounds(Bool, A, CartesianIndex((5, 4, 4))) == false
    @test checkbounds(Bool, A, CartesianIndex((1,))) == false
    @test checkbounds(Bool, A, CartesianIndex((60,))) == false
    @test checkbounds(Bool, A, CartesianIndex((61,))) == false
    @test checkbounds(Bool, A, CartesianIndex((2, 2, 2, 1,))) == true
    @test checkbounds(Bool, A, CartesianIndex((2, 2, 2, 2,))) == false
    @test checkbounds(Bool, A, CartesianIndex((1, 1,)))  == false
    @test checkbounds(Bool, A, CartesianIndex((1, 12,))) == false
    @test checkbounds(Bool, A, CartesianIndex((5, 12,))) == false
    @test checkbounds(Bool, A, CartesianIndex((1, 13,))) == false
    @test checkbounds(Bool, A, CartesianIndex((6, 12,))) == false
end

@testset "mix of CartesianIndex and Int" begin
    @test checkbounds(Bool, A, CartesianIndex((1,)), 1, CartesianIndex((1,))) == true
    @test checkbounds(Bool, A, CartesianIndex((5, 4)), 3)  == true
    @test checkbounds(Bool, A, CartesianIndex((0, 1)), 1)  == false
    @test checkbounds(Bool, A, 1, CartesianIndex((0, 1)))  == false
    @test checkbounds(Bool, A, 1, 1, CartesianIndex((0,))) == false
    @test checkbounds(Bool, A, 6, CartesianIndex((4, 3)))  == false
    @test checkbounds(Bool, A, 5, CartesianIndex((5,)), 3) == false
    @test checkbounds(Bool, A, CartesianIndex((5,)), CartesianIndex((4,)), CartesianIndex((4,)))  == false
end

@testset "vector indices" begin
    @test checkbounds(Bool, A, 1:5, 1:4, 1:3) == true
    @test checkbounds(Bool, A, 0:5, 1:4, 1:3) == false
    @test checkbounds(Bool, A, 1:5, 0:4, 1:3) == false
    @test checkbounds(Bool, A, 1:5, 1:4, 0:3) == false
    @test checkbounds(Bool, A, 1:6, 1:4, 1:3) == false
    @test checkbounds(Bool, A, 1:5, 1:5, 1:3) == false
    @test checkbounds(Bool, A, 1:5, 1:4, 1:4) == false
    @test checkbounds(Bool, A, 1:60) == true
    @test checkbounds(Bool, A, 1:61) == false
    @test checkbounds(Bool, A, 2, 2, 2, 1:1) == true  # extra indices
    @test checkbounds(Bool, A, 2, 2, 2, 1:2) == false
    @test checkbounds(Bool, A, 1:5, 1:4) == false
    @test checkbounds(Bool, A, 1:5, 1:12) == false
    @test checkbounds(Bool, A, 1:5, 1:13) == false
    @test checkbounds(Bool, A, 1:6, 1:12) == false
end

@testset "logical" begin
    @test checkbounds(Bool, A, trues(5), trues(4), trues(3)) == true
    @test checkbounds(Bool, A, trues(6), trues(4), trues(3)) == false
    @test checkbounds(Bool, A, trues(5), trues(5), trues(3)) == false
    @test checkbounds(Bool, A, trues(5), trues(4), trues(4)) == false
    @test checkbounds(Bool, A, trues(60)) == true
    @test checkbounds(Bool, A, trues(61)) == false
    @test checkbounds(Bool, A, 2, 2, 2, trues(1)) == true  # extra indices
    @test checkbounds(Bool, A, 2, 2, 2, trues(2)) == false
    @test checkbounds(Bool, A, trues(5), trues(12)) == false
    @test checkbounds(Bool, A, trues(5), trues(13)) == false
    @test checkbounds(Bool, A, trues(6), trues(12)) == false
    @test checkbounds(Bool, A, trues(5, 4, 3)) == true
    @test checkbounds(Bool, A, trues(5, 4, 2)) == false
    @test checkbounds(Bool, A, trues(5, 12)) == false
    @test checkbounds(Bool, A, trues(1, 5), trues(1, 4, 1), trues(1, 1, 3)) == false
    @test checkbounds(Bool, A, trues(1, 5), trues(1, 4, 1), trues(1, 1, 2)) == false
    @test checkbounds(Bool, A, trues(1, 5), trues(1, 5, 1), trues(1, 1, 3)) == false
    @test checkbounds(Bool, A, trues(1, 5), :, 2) == false
end

@testset "array of CartesianIndex" begin
    @test checkbounds(Bool, A, [CartesianIndex((1, 1, 1))]) == true
    @test checkbounds(Bool, A, [CartesianIndex((5, 4, 3))]) == true
    @test checkbounds(Bool, A, [CartesianIndex((0, 1, 1))]) == false
    @test checkbounds(Bool, A, [CartesianIndex((1, 0, 1))]) == false
    @test checkbounds(Bool, A, [CartesianIndex((1, 1, 0))]) == false
    @test checkbounds(Bool, A, [CartesianIndex((6, 4, 3))]) == false
    @test checkbounds(Bool, A, [CartesianIndex((5, 5, 3))]) == false
    @test checkbounds(Bool, A, [CartesianIndex((5, 4, 4))]) == false
    @test checkbounds(Bool, A, [CartesianIndex((1, 1))], 1) == true
    @test checkbounds(Bool, A, [CartesianIndex((5, 4))], 3) == true
    @test checkbounds(Bool, A, [CartesianIndex((0, 1))], 1) == false
    @test checkbounds(Bool, A, [CartesianIndex((1, 0))], 1) == false
    @test checkbounds(Bool, A, [CartesianIndex((1, 1))], 0) == false
    @test checkbounds(Bool, A, [CartesianIndex((6, 4))], 3) == false
    @test checkbounds(Bool, A, [CartesianIndex((5, 5))], 3) == false
    @test checkbounds(Bool, A, [CartesianIndex((5, 4))], 4) == false
end

@testset "issue #5: split output is usable downstream" begin
    # Regression test for https://github.com/JuliaImages/OpenCV.jl/issues/5
    # The original report (CxxWrap 0.10 era) saw split return Mats whose
    # backing CxxMat was a CxxMatDereferenced that no cpp_to_julia method
    # matched, raising MethodError. Modern CxxWrap makes
    # CxxMatDereferenced <: CxxMat so the existing method matches; lock
    # that in here.
    img = OpenCV.Mat(rand(UInt8, 3, 8, 8))
    ym = OpenCV.cvtColor(img, OpenCV.COLOR_BGR2LAB)
    channels = OpenCV.split(ym)
    @test channels isa AbstractVector
    @test length(channels) == 3
    for c in channels
        @test size(c) == (1, 8, 8)
        @test c isa OpenCV.Mat
        # Touch the data: this exercises the unsafe_wrap path that used
        # to crash when the backing CxxMat was dereferenced incorrectly.
        @test sum(Int, c) >= 0
        @test c[1, 1, 1] isa UInt8
    end
end

@testset "issue #57: split output survives GC" begin
    # Regression test for https://github.com/JuliaImages/OpenCV.jl/issues/57
    function make_channels()
        img = OpenCV.Mat(rand(UInt8, 3, 512, 512))
        return OpenCV.split(img)
    end
    channels = make_channels()
    GC.gc(); GC.gc()
    @test length(channels) == 3
    for c in channels
        @test size(c) == (1, 512, 512)
        s = 0
        for k in axes(c, 3), j in axes(c, 2)
            s += c[1, j, k]
        end
        @test s >= 0
    end
    GC.gc(); GC.gc()
    @test channels[1][1, 1, 1] isa UInt8
    @test channels[end][1, end, end] isa UInt8
end

@testset "issue #10: external memory pressure triggers GC" begin
    # Regression test for https://github.com/JuliaImages/OpenCV.jl/issues/10
    old_threshold = OpenCV._gc_external_threshold[]
    OpenCV._gc_external_threshold[] = 8 * 1024 * 1024
    OpenCV._gc_external_bytes[] = 0
    try
        src = OpenCV.Mat(rand(UInt8, 3, 1024, 1024))
        GC.gc(); GC.gc()
        pauses_before = Base.gc_num().pause
        for _ in 1:50
            _ = OpenCV.cvtColor(src, OpenCV.COLOR_BGR2GRAY)
        end
        @test Base.gc_num().pause > pauses_before
    finally
        OpenCV._gc_external_threshold[] = old_threshold
    end
end
