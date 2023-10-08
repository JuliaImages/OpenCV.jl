const _IMAGE_FORMATS = (:PNG, :JPEG)
const _IMAGE_DATA_FORMATS = Union{(DataFormat{f} for f in _IMAGE_FORMATS)...}

function _get_format_extension(fmt)
    FileIO.info(fmt)[2]
end

## Load Images
function load(f::File{T}) where {T<:_IMAGE_DATA_FORMATS}
    data = imread(f.filename)
    return data
end

function load(f::File{T}, flags::Int) where {T<:_IMAGE_DATA_FORMATS}
    data = imread(f.filename, flags)
    return data
end

function load(s::Stream{T}, flags::Int=IMREAD_UNCHANGED) where {T<:_IMAGE_DATA_FORMATS}
    data = read(stream(s))
    img = imdecode(reshape(data, 1, 1, :), flags)
    return img
end

## Save Images

function save(f::File{T}, image::InputArray) where {T<:_IMAGE_DATA_FORMATS}
    imwrite(f.filename, image)
end

function save(f::File{T}, image::InputArray, params::Array{Int32,1}) where {T<:_IMAGE_DATA_FORMATS}
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

