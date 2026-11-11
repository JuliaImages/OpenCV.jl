

   const mcc_ColorChart = Int64 
function Base.getproperty(m::cv_Ptr{CChecker}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CChecker}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function mcc_setTarget(cobj::cv_Ptr{T}, _target::mcc_ColorChart) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_setTarget(julia_to_cpp(cobj),julia_to_cpp(_target)))
end

function mcc_setBox(cobj::cv_Ptr{T}, _box::Array{Point{Float32}, 1}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_setBox(julia_to_cpp(cobj),julia_to_cpp(_box)))
end

function mcc_setChartsRGB(cobj::cv_Ptr{T}, _chartsRGB::InputArray) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_setChartsRGB(julia_to_cpp(cobj),julia_to_cpp(_chartsRGB)))
end

function mcc_setChartsYCbCr(cobj::cv_Ptr{T}, _chartsYCbCr::InputArray) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_setChartsYCbCr(julia_to_cpp(cobj),julia_to_cpp(_chartsYCbCr)))
end

function mcc_setCost(cobj::cv_Ptr{T}, _cost::Float64) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_setCost(julia_to_cpp(cobj),julia_to_cpp(_cost)))
end

function mcc_setCenter(cobj::cv_Ptr{T}, _center::Point{Float32}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_setCenter(julia_to_cpp(cobj),julia_to_cpp(_center)))
end

function mcc_getTarget(cobj::cv_Ptr{T}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_getTarget(julia_to_cpp(cobj)))
end

function mcc_getBox(cobj::cv_Ptr{T}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_getBox(julia_to_cpp(cobj)))
end

function mcc_getColorCharts(cobj::cv_Ptr{T}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_getColorCharts(julia_to_cpp(cobj)))
end

function mcc_getChartsRGB(cobj::cv_Ptr{T}, getStats::Bool) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_getChartsRGB(julia_to_cpp(cobj),julia_to_cpp(getStats)))
end
mcc_getChartsRGB(cobj::cv_Ptr{T}; getStats::Bool = (true)) where {T <: CChecker} = mcc_getChartsRGB(cobj, getStats)

function mcc_getChartsYCbCr(cobj::cv_Ptr{T}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_getChartsYCbCr(julia_to_cpp(cobj)))
end

function mcc_getCost(cobj::cv_Ptr{T}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_getCost(julia_to_cpp(cobj)))
end

function mcc_getCenter(cobj::cv_Ptr{T}) where {T <: CChecker}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_cv_mcc_CChecker_getCenter(julia_to_cpp(cobj)))
end
function Base.getproperty(m::DetectorParametersMCC, s::Symbol)
    if s==:adaptiveThreshWinSizeMin
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_adaptiveThreshWinSizeMin(m))
    end
    if s==:adaptiveThreshWinSizeMax
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_adaptiveThreshWinSizeMax(m))
    end
    if s==:adaptiveThreshWinSizeStep
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_adaptiveThreshWinSizeStep(m))
    end
    if s==:adaptiveThreshConstant
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_adaptiveThreshConstant(m))
    end
    if s==:minContoursAreaRate
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minContoursAreaRate(m))
    end
    if s==:minContoursArea
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minContoursArea(m))
    end
    if s==:confidenceThreshold
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_confidenceThreshold(m))
    end
    if s==:minContourSolidity
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minContourSolidity(m))
    end
    if s==:findCandidatesApproxPolyDPEpsMultiplier
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_findCandidatesApproxPolyDPEpsMultiplier(m))
    end
    if s==:borderWidth
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_borderWidth(m))
    end
    if s==:B0factor
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_B0factor(m))
    end
    if s==:maxError
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_maxError(m))
    end
    if s==:minContourPointsAllowed
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minContourPointsAllowed(m))
    end
    if s==:minContourLengthAllowed
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minContourLengthAllowed(m))
    end
    if s==:minInterContourDistance
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minInterContourDistance(m))
    end
    if s==:minInterCheckerDistance
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minInterCheckerDistance(m))
    end
    if s==:minImageSize
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minImageSize(m))
    end
    if s==:minGroupSize
        return cpp_to_julia(jlopencv_DetectorParametersMCC_get_minGroupSize(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DetectorParametersMCC, s::Symbol, v)
    if s==:adaptiveThreshWinSizeMin
        jlopencv_DetectorParametersMCC_set_adaptiveThreshWinSizeMin(m, julia_to_cpp(v))
        return v
    end
    if s==:adaptiveThreshWinSizeMax
        jlopencv_DetectorParametersMCC_set_adaptiveThreshWinSizeMax(m, julia_to_cpp(v))
        return v
    end
    if s==:adaptiveThreshWinSizeStep
        jlopencv_DetectorParametersMCC_set_adaptiveThreshWinSizeStep(m, julia_to_cpp(v))
        return v
    end
    if s==:adaptiveThreshConstant
        jlopencv_DetectorParametersMCC_set_adaptiveThreshConstant(m, julia_to_cpp(v))
        return v
    end
    if s==:minContoursAreaRate
        jlopencv_DetectorParametersMCC_set_minContoursAreaRate(m, julia_to_cpp(v))
        return v
    end
    if s==:minContoursArea
        jlopencv_DetectorParametersMCC_set_minContoursArea(m, julia_to_cpp(v))
        return v
    end
    if s==:confidenceThreshold
        jlopencv_DetectorParametersMCC_set_confidenceThreshold(m, julia_to_cpp(v))
        return v
    end
    if s==:minContourSolidity
        jlopencv_DetectorParametersMCC_set_minContourSolidity(m, julia_to_cpp(v))
        return v
    end
    if s==:findCandidatesApproxPolyDPEpsMultiplier
        jlopencv_DetectorParametersMCC_set_findCandidatesApproxPolyDPEpsMultiplier(m, julia_to_cpp(v))
        return v
    end
    if s==:borderWidth
        jlopencv_DetectorParametersMCC_set_borderWidth(m, julia_to_cpp(v))
        return v
    end
    if s==:B0factor
        jlopencv_DetectorParametersMCC_set_B0factor(m, julia_to_cpp(v))
        return v
    end
    if s==:maxError
        jlopencv_DetectorParametersMCC_set_maxError(m, julia_to_cpp(v))
        return v
    end
    if s==:minContourPointsAllowed
        jlopencv_DetectorParametersMCC_set_minContourPointsAllowed(m, julia_to_cpp(v))
        return v
    end
    if s==:minContourLengthAllowed
        jlopencv_DetectorParametersMCC_set_minContourLengthAllowed(m, julia_to_cpp(v))
        return v
    end
    if s==:minInterContourDistance
        jlopencv_DetectorParametersMCC_set_minInterContourDistance(m, julia_to_cpp(v))
        return v
    end
    if s==:minInterCheckerDistance
        jlopencv_DetectorParametersMCC_set_minInterCheckerDistance(m, julia_to_cpp(v))
        return v
    end
    if s==:minImageSize
        jlopencv_DetectorParametersMCC_set_minImageSize(m, julia_to_cpp(v))
        return v
    end
    if s==:minGroupSize
        jlopencv_DetectorParametersMCC_set_minGroupSize(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function mcc_DetectorParametersMCC()
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_DetectorParametersMCC_cv_mcc_DetectorParametersMCC_DetectorParametersMCC())
end
function Base.getproperty(m::cv_Ptr{CCheckerDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CCheckerDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function mcc_process(cobj::cv_Ptr{T}, image::InputArray, regionsOfInterest::Array{Rect{Int32}, 1}, nc::Int64) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_process(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(regionsOfInterest),julia_to_cpp(nc)))
end
mcc_process(cobj::cv_Ptr{T}, image::InputArray, regionsOfInterest::Array{Rect{Int32}, 1}; nc::Int64 = Int64(1)) where {T <: CCheckerDetector} = mcc_process(cobj, image, regionsOfInterest, nc)

function mcc_process(cobj::cv_Ptr{T}, image::InputArray, nc::Int64) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_process(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(nc)))
end
mcc_process(cobj::cv_Ptr{T}, image::InputArray; nc::Int64 = Int64(1)) where {T <: CCheckerDetector} = mcc_process(cobj, image, nc)

function mcc_getBestColorChecker(cobj::cv_Ptr{T}) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_getBestColorChecker(julia_to_cpp(cobj)))
end

function mcc_getListColorChecker(cobj::cv_Ptr{T}) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_getListColorChecker(julia_to_cpp(cobj)))
end

function mcc_draw(cobj::cv_Ptr{T}, checkers::AbstractVector{<:cv_Ptr{<:CChecker}}, img::InputArray, color::Scalar, thickness::Int64) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_draw(julia_to_cpp(cobj),julia_to_cpp(checkers),julia_to_cpp(img),julia_to_cpp(color),julia_to_cpp(thickness)))
end
mcc_draw(cobj::cv_Ptr{T}, checkers::AbstractVector{<:cv_Ptr{<:CChecker}}, img::InputArray; color::Scalar = (cpp_to_julia(CVRRGBOWSYbWSWP())), thickness::Int64 = Int64(2)) where {T <: CCheckerDetector} = mcc_draw(cobj, checkers, img, color, thickness)

function mcc_getRefColors(cobj::cv_Ptr{T}) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_getRefColors(julia_to_cpp(cobj)))
end

function mcc_setDetectionParams(cobj::cv_Ptr{T}, params::DetectorParametersMCC) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_setDetectionParams(julia_to_cpp(cobj),julia_to_cpp(params)))
end

function mcc_setColorChartType(cobj::cv_Ptr{T}, chartType::mcc_ColorChart) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_setColorChartType(julia_to_cpp(cobj),julia_to_cpp(chartType)))
end

function mcc_setUseDnnModel(cobj::cv_Ptr{T}, useDnn::Bool) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_setUseDnnModel(julia_to_cpp(cobj),julia_to_cpp(useDnn)))
end

function mcc_getUseDnnModel(cobj::cv_Ptr{T}) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_getUseDnnModel(julia_to_cpp(cobj)))
end

function mcc_getDetectionParams(cobj::cv_Ptr{T}) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_getDetectionParams(julia_to_cpp(cobj)))
end

function mcc_getColorChartType(cobj::cv_Ptr{T}) where {T <: CCheckerDetector}
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_cv_mcc_CCheckerDetector_getColorChartType(julia_to_cpp(cobj)))
end

function mcc_CChecker_create()
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CChecker_create())
end

function mcc_CCheckerDetector_create()
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_create())
end

function mcc_CCheckerDetector_create(net::Net)
	return cpp_to_julia(jlopencv_cv_mcc_cv_mcc_CCheckerDetector_create(julia_to_cpp(net)))
end



