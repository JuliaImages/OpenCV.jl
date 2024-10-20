_format_stream(format, io) = Stream{format}(io)

function Base.show(io::IO, ::MIME"image/png", image::Mat{T}) where {T<:dtypes}
	save(_format_stream(DataFormat{:PNG}, io), image)
end