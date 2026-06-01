## Issue #31: the auto-generated `VideoWriter_fourcc(::Char, ::Char, ::Char,
## ::Char)` forwards `Char` values to a C++ binding that only accepts `Cchar`
## (`Int8`), so every call raises `MethodError`. The wrapper itself goes
## through `julia_to_cpp` for each argument, so registering a Char conversion
## is enough to fix dispatch without overwriting the wrapper method (which
## Julia 1.12 rejects during precompilation). `VideoWriter_fourcc` is the
## only wrapper that uses `::Char`.

julia_to_cpp(c::Char) = Cchar(c)

# Convenience form mirroring Python's `cv.VideoWriter_fourcc(*"h264")`.
function VideoWriter_fourcc(s::AbstractString)
    length(s) == 4 ||
        throw(ArgumentError("VideoWriter_fourcc expects a 4-character codec tag, got $(repr(s))"))
    VideoWriter_fourcc(s[1], s[2], s[3], s[4])
end
