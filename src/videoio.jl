# Hand-written conveniences for the videoio module.

# Mirror Python's `cv.VideoWriter_fourcc(*"h264")`: accept the 4-character codec
# tag as a single string and forward to the generated four-Char wrapper. Issue #31.
function VideoWriter_fourcc(s::AbstractString)
    length(s) == 4 ||
        throw(ArgumentError("VideoWriter_fourcc expects a 4-character codec tag, got $(repr(s))"))
    VideoWriter_fourcc(s[1], s[2], s[3], s[4])
end
