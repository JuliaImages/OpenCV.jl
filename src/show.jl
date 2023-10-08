_format_stream(format, io) = Stream{format}(io)

function Base.show(io::IO, ::MIME"image/png", image::InputArray)
	save(_format_stream(DataFormat{:PNG}, io), image)
end