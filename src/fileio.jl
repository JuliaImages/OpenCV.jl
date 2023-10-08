using FileIO: File, DataFormat, Stream, stream

const _IMAGE_FORMATS = (:PNG, :JPEG)
const _IMAGE_FILE_FORMATS = Union{(File{DataFormat{T}} for T in _IMAGE_FORMATS)...}

function load(f::T) where {T<:_IMAGE_FILE_FORMATS}
    data = imread(f.filename)
    return data
end

function load(f::T, flags::Int) where {T<:_IMAGE_FILE_FORMATS}
    data = imread(f.filename, flags)
    return data
end

function save(f::T, image::InputArray) where {T<:_IMAGE_FILE_FORMATS}
    imwrite(f.filename, image)
end

function save(f::T, image::InputArray, params::Array{Int32,1}) where {T<:_IMAGE_FILE_FORMATS}
    imwrite(f.filename, image, params)
end

## To-do add streams
