
function Base.getproperty(m::cv_Ptr{GraphSegmentation}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GraphSegmentation}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_segmentation_processImage(cobj::cv_Ptr{T}, src::InputArray, dst::InputArray) where {T <: GraphSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_GraphSegmentation_cv_ximgproc_segmentation_GraphSegmentation_processImage(julia_to_cpp(cobj),julia_to_cpp(src),julia_to_cpp(dst)))
end
ximgproc_segmentation_processImage(cobj::cv_Ptr{T}, src::InputArray; dst::InputArray = (CxxMat())) where {T <: GraphSegmentation} = ximgproc_segmentation_processImage(cobj, src, dst)

function ximgproc_segmentation_setSigma(cobj::cv_Ptr{T}, sigma::Float64) where {T <: GraphSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_GraphSegmentation_cv_ximgproc_segmentation_GraphSegmentation_setSigma(julia_to_cpp(cobj),julia_to_cpp(sigma)))
end

function ximgproc_segmentation_getSigma(cobj::cv_Ptr{T}) where {T <: GraphSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_GraphSegmentation_cv_ximgproc_segmentation_GraphSegmentation_getSigma(julia_to_cpp(cobj)))
end

function ximgproc_segmentation_setK(cobj::cv_Ptr{T}, k::Float64) where {T <: GraphSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_GraphSegmentation_cv_ximgproc_segmentation_GraphSegmentation_setK(julia_to_cpp(cobj),julia_to_cpp(k)))
end

function ximgproc_segmentation_getK(cobj::cv_Ptr{T}) where {T <: GraphSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_GraphSegmentation_cv_ximgproc_segmentation_GraphSegmentation_getK(julia_to_cpp(cobj)))
end

function ximgproc_segmentation_setMinSize(cobj::cv_Ptr{T}, min_size::Int64) where {T <: GraphSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_GraphSegmentation_cv_ximgproc_segmentation_GraphSegmentation_setMinSize(julia_to_cpp(cobj),julia_to_cpp(min_size)))
end

function ximgproc_segmentation_getMinSize(cobj::cv_Ptr{T}) where {T <: GraphSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_GraphSegmentation_cv_ximgproc_segmentation_GraphSegmentation_getMinSize(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SelectiveSearchSegmentationStrategy}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SelectiveSearchSegmentationStrategy}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_segmentation_setImage(cobj::cv_Ptr{T}, img::InputArray, regions::InputArray, sizes::InputArray, image_id::Int64) where {T <: SelectiveSearchSegmentationStrategy}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_setImage(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(regions),julia_to_cpp(sizes),julia_to_cpp(image_id)))
end
ximgproc_segmentation_setImage(cobj::cv_Ptr{T}, img::InputArray, regions::InputArray, sizes::InputArray; image_id::Int64 = Int64(-1)) where {T <: SelectiveSearchSegmentationStrategy} = ximgproc_segmentation_setImage(cobj, img, regions, sizes, image_id)

function ximgproc_segmentation_get(cobj::cv_Ptr{T}, r1::Int64, r2::Int64) where {T <: SelectiveSearchSegmentationStrategy}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_get(julia_to_cpp(cobj),julia_to_cpp(r1),julia_to_cpp(r2)))
end

function ximgproc_segmentation_merge(cobj::cv_Ptr{T}, r1::Int64, r2::Int64) where {T <: SelectiveSearchSegmentationStrategy}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_merge(julia_to_cpp(cobj),julia_to_cpp(r1),julia_to_cpp(r2)))
end
function Base.getproperty(m::cv_Ptr{SelectiveSearchSegmentationStrategyColor}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SelectiveSearchSegmentationStrategyColor}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{SelectiveSearchSegmentationStrategySize}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SelectiveSearchSegmentationStrategySize}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{SelectiveSearchSegmentationStrategyTexture}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SelectiveSearchSegmentationStrategyTexture}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{SelectiveSearchSegmentationStrategyFill}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SelectiveSearchSegmentationStrategyFill}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{SelectiveSearchSegmentationStrategyMultiple}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SelectiveSearchSegmentationStrategyMultiple}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_segmentation_addStrategy(cobj::cv_Ptr{T}, g::cv_Ptr{<:SelectiveSearchSegmentationStrategy}, weight::Float64) where {T <: SelectiveSearchSegmentationStrategyMultiple}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_addStrategy(julia_to_cpp(cobj),julia_to_cpp(g),julia_to_cpp(weight)))
end

function ximgproc_segmentation_clearStrategies(cobj::cv_Ptr{T}) where {T <: SelectiveSearchSegmentationStrategyMultiple}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_clearStrategies(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SelectiveSearchSegmentation}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SelectiveSearchSegmentation}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function ximgproc_segmentation_setBaseImage(cobj::cv_Ptr{T}, img::InputArray) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_setBaseImage(julia_to_cpp(cobj),julia_to_cpp(img)))
end

function ximgproc_segmentation_switchToSingleStrategy(cobj::cv_Ptr{T}, k::Int64, sigma::Float64) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_switchToSingleStrategy(julia_to_cpp(cobj),julia_to_cpp(k),julia_to_cpp(sigma)))
end
ximgproc_segmentation_switchToSingleStrategy(cobj::cv_Ptr{T}; k::Int64 = Int64(200), sigma::Float64 = Float64(0.8)) where {T <: SelectiveSearchSegmentation} = ximgproc_segmentation_switchToSingleStrategy(cobj, k, sigma)

function ximgproc_segmentation_switchToSelectiveSearchFast(cobj::cv_Ptr{T}, base_k::Int64, inc_k::Int64, sigma::Float64) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_switchToSelectiveSearchFast(julia_to_cpp(cobj),julia_to_cpp(base_k),julia_to_cpp(inc_k),julia_to_cpp(sigma)))
end
ximgproc_segmentation_switchToSelectiveSearchFast(cobj::cv_Ptr{T}; base_k::Int64 = Int64(150), inc_k::Int64 = Int64(150), sigma::Float64 = Float64(0.8)) where {T <: SelectiveSearchSegmentation} = ximgproc_segmentation_switchToSelectiveSearchFast(cobj, base_k, inc_k, sigma)

function ximgproc_segmentation_switchToSelectiveSearchQuality(cobj::cv_Ptr{T}, base_k::Int64, inc_k::Int64, sigma::Float64) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_switchToSelectiveSearchQuality(julia_to_cpp(cobj),julia_to_cpp(base_k),julia_to_cpp(inc_k),julia_to_cpp(sigma)))
end
ximgproc_segmentation_switchToSelectiveSearchQuality(cobj::cv_Ptr{T}; base_k::Int64 = Int64(150), inc_k::Int64 = Int64(150), sigma::Float64 = Float64(0.8)) where {T <: SelectiveSearchSegmentation} = ximgproc_segmentation_switchToSelectiveSearchQuality(cobj, base_k, inc_k, sigma)

function ximgproc_segmentation_addImage(cobj::cv_Ptr{T}, img::InputArray) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_addImage(julia_to_cpp(cobj),julia_to_cpp(img)))
end

function ximgproc_segmentation_clearImages(cobj::cv_Ptr{T}) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_clearImages(julia_to_cpp(cobj)))
end

function ximgproc_segmentation_addGraphSegmentation(cobj::cv_Ptr{T}, g::cv_Ptr{<:GraphSegmentation}) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_addGraphSegmentation(julia_to_cpp(cobj),julia_to_cpp(g)))
end

function ximgproc_segmentation_clearGraphSegmentations(cobj::cv_Ptr{T}) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_clearGraphSegmentations(julia_to_cpp(cobj)))
end

function ximgproc_segmentation_addStrategy(cobj::cv_Ptr{T}, s::cv_Ptr{<:SelectiveSearchSegmentationStrategy}) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_addStrategy(julia_to_cpp(cobj),julia_to_cpp(s)))
end

function ximgproc_segmentation_clearStrategies(cobj::cv_Ptr{T}) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_clearStrategies(julia_to_cpp(cobj)))
end

function ximgproc_segmentation_process(cobj::cv_Ptr{T}) where {T <: SelectiveSearchSegmentation}
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_cv_ximgproc_segmentation_SelectiveSearchSegmentation_process(julia_to_cpp(cobj)))
end

function ximgproc_segmentation_createGraphSegmentation(sigma::Float64, k::Float64, min_size::Int64)
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createGraphSegmentation(julia_to_cpp(sigma),julia_to_cpp(k),julia_to_cpp(min_size)))
end
ximgproc_segmentation_createGraphSegmentation(; sigma::Float64 = Float64(0.5), k::Float64 = Float64(300), min_size::Int64 = Int64(100)) = ximgproc_segmentation_createGraphSegmentation(sigma, k, min_size)

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyColor()
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyColor())
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategySize()
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategySize())
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyTexture()
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyTexture())
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyFill()
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyFill())
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple()
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple())
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(s1::cv_Ptr{<:SelectiveSearchSegmentationStrategy})
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(julia_to_cpp(s1)))
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(s1::cv_Ptr{<:SelectiveSearchSegmentationStrategy}, s2::cv_Ptr{<:SelectiveSearchSegmentationStrategy})
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(julia_to_cpp(s1),julia_to_cpp(s2)))
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(s1::cv_Ptr{<:SelectiveSearchSegmentationStrategy}, s2::cv_Ptr{<:SelectiveSearchSegmentationStrategy}, s3::cv_Ptr{<:SelectiveSearchSegmentationStrategy})
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(julia_to_cpp(s1),julia_to_cpp(s2),julia_to_cpp(s3)))
end

function ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(s1::cv_Ptr{<:SelectiveSearchSegmentationStrategy}, s2::cv_Ptr{<:SelectiveSearchSegmentationStrategy}, s3::cv_Ptr{<:SelectiveSearchSegmentationStrategy}, s4::cv_Ptr{<:SelectiveSearchSegmentationStrategy})
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentationStrategyMultiple(julia_to_cpp(s1),julia_to_cpp(s2),julia_to_cpp(s3),julia_to_cpp(s4)))
end

function ximgproc_segmentation_createSelectiveSearchSegmentation()
	return cpp_to_julia(jlopencv_cv_ximgproc_segmentation_cv_ximgproc_segmentation_createSelectiveSearchSegmentation())
end



