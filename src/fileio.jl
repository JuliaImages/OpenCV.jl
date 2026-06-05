const _IMAGE_DATA_FORMATS = Union{
    format"BMP",
    format"JP2",
    format"JPEG",
    format"PNG",
    format"TIFF",
}

function _get_format_extension(fmt)
    FileIO.info(fmt)[2]
end

## Load Images

"""
    load(f::File, [flags])
    load(s::Stream, [flags])

FileIO integration: decode an image file or stream into an OpenCV [`Mat`](@ref).
Registered for BMP/JP2/JPEG/PNG/TIFF, so `FileIO.load("img.png")` returns a `Mat`
with the usual `(channels, cols, rows)` layout. The optional `flags` argument is an
`imread`-style colour flag (e.g. `OpenCV.IMREAD_GRAYSCALE`).
"""
function load(f::File{T}) where {T<:_IMAGE_DATA_FORMATS}
    data = imread(f.filename)
    return data
end

function load(f::File{T}, flags::Int64) where {T<:_IMAGE_DATA_FORMATS}
    data = imread(f.filename, flags)
    return data
end

function load(s::Stream{T}) where {T<:_IMAGE_DATA_FORMATS}
    data = read(stream(s))
    img = imdecode(reshape(data, 1, 1, :))
    return img
end

function load(s::Stream{T}, flags::Int64) where {T<:_IMAGE_DATA_FORMATS}
    data = read(stream(s))
    img = imdecode(reshape(data, 1, 1, :), flags)
    return img
end

## Save Images

"""
    save(f::File, image, [params])
    save(s::Stream, image, [params])

FileIO integration: encode an OpenCV image (a [`Mat`](@ref) or any `InputArray`) to a
file or stream. The format is taken from the `File`/`Stream` type; the optional
`params::Vector{Int32}` is forwarded to `imwrite`/`imencode` (e.g. JPEG quality).
"""
function save(f::File{T}, image::InputArray) where {T<:_IMAGE_DATA_FORMATS}
    imwrite(f.filename, image)
end

function save(f::File{T}, image::InputArray, params::Vector{Int32}) where {T<:_IMAGE_DATA_FORMATS}
    imwrite(f.filename, image, params)
end

function save(s::Stream{T}, image::InputArray) where {T<:_IMAGE_DATA_FORMATS}
    ext = _get_format_extension(T)
    enc_img = imencode(ext, image)[2]
    Base.write(stream(s), enc_img)
end

function save(s::Stream{T}, image::InputArray, params::Vector{Int32}) where {T<:_IMAGE_DATA_FORMATS}
    ext = _get_format_extension(T)
    enc_img = imencode(ext, image, params)[2]
    Base.write(stream(s), enc_img)
end

"""
    imdecode(buf::AbstractVector{UInt8}, [flags])

Decode an encoded image held in a flat byte buffer (e.g. from `imencode`, a file read,
or a network response) into a [`Mat`](@ref). This convenience method reshapes `buf`
into the 3D `InputArray` the generated `imdecode` expects; without `flags` it uses the
same default as `imread` (`IMREAD_COLOR_BGR`). See issue #58.
"""
imdecode(buf::AbstractVector{UInt8}, flags::Integer) =
    imdecode(reshape(buf, 1, 1, :), Int64(flags))
imdecode(buf::AbstractVector{UInt8}) =
    imdecode(buf, Int64(cv_IMREAD_COLOR_BGR))
