

   const aruco_PredefinedDictionaryType = Int64 

   const aruco_CornerRefineMethod = Int64 
function Base.getproperty(m::Dictionary, s::Symbol)
    if s==:bytesList
        return cpp_to_julia(jlopencv_Dictionary_get_bytesList(m))
    end
    if s==:markerSize
        return cpp_to_julia(jlopencv_Dictionary_get_markerSize(m))
    end
    if s==:maxCorrectionBits
        return cpp_to_julia(jlopencv_Dictionary_get_maxCorrectionBits(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Dictionary, s::Symbol, v)
    if s==:bytesList
        jlopencv_Dictionary_set_bytesList(m, julia_to_cpp(v))
        return v
    end
    if s==:markerSize
        jlopencv_Dictionary_set_markerSize(m, julia_to_cpp(v))
        return v
    end
    if s==:maxCorrectionBits
        jlopencv_Dictionary_set_maxCorrectionBits(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function aruco_readDictionary(cobj::Dictionary, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_readDictionary(julia_to_cpp(cobj),julia_to_cpp(fn)))
end

function aruco_writeDictionary(cobj::Dictionary, fs::FileStorage, name::String)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_writeDictionary(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
aruco_writeDictionary(cobj::Dictionary, fs::FileStorage; name::String = ("")) = aruco_writeDictionary(cobj, fs, name)

function aruco_identify(cobj::Dictionary, onlyBits::InputArray, maxCorrectionRate::Float64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_identify(julia_to_cpp(cobj),julia_to_cpp(onlyBits),julia_to_cpp(maxCorrectionRate)))
end

function aruco_identify(cobj::Dictionary, onlyCellPixelRatio::InputArray, maxCorrectionRate::Float64, validBitIdThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_identify(julia_to_cpp(cobj),julia_to_cpp(onlyCellPixelRatio),julia_to_cpp(maxCorrectionRate),julia_to_cpp(validBitIdThreshold)))
end

function aruco_getDistanceToId(cobj::Dictionary, bits::InputArray, id::Int64, allRotations::Bool)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_getDistanceToId(julia_to_cpp(cobj),julia_to_cpp(bits),julia_to_cpp(id),julia_to_cpp(allRotations)))
end
aruco_getDistanceToId(cobj::Dictionary, bits::InputArray, id::Int64; allRotations::Bool = (true)) = aruco_getDistanceToId(cobj, bits, id, allRotations)

function aruco_getDistanceToId(cobj::Dictionary, onlyCellPixelRatio::InputArray, id::Int64, allRotations::Bool, validBitIdThreshold::Float64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_getDistanceToId(julia_to_cpp(cobj),julia_to_cpp(onlyCellPixelRatio),julia_to_cpp(id),julia_to_cpp(allRotations),julia_to_cpp(validBitIdThreshold)))
end

function aruco_getMarkerBits(cobj::Dictionary, markerId::Int64, rotationId::Int64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_getMarkerBits(julia_to_cpp(cobj),julia_to_cpp(markerId),julia_to_cpp(rotationId)))
end
aruco_getMarkerBits(cobj::Dictionary, markerId::Int64; rotationId::Int64 = Int64(0)) = aruco_getMarkerBits(cobj, markerId, rotationId)

function aruco_Dictionary()
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_Dictionary())
end

function aruco_Dictionary(bytesList::InputArray, _markerSize::Int64, maxcorr::Int64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_cv_aruco_Dictionary_Dictionary(julia_to_cpp(bytesList),julia_to_cpp(_markerSize),julia_to_cpp(maxcorr)))
end
aruco_Dictionary(bytesList::InputArray, _markerSize::Int64; maxcorr::Int64 = Int64(0)) = aruco_Dictionary(bytesList, _markerSize, maxcorr)
function Base.getproperty(m::Board, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Board, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function aruco_getDictionary(cobj::Board)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Board_cv_aruco_Board_getDictionary(julia_to_cpp(cobj)))
end

function aruco_getObjPoints(cobj::Board)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Board_cv_aruco_Board_getObjPoints(julia_to_cpp(cobj)))
end

function aruco_getIds(cobj::Board)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Board_cv_aruco_Board_getIds(julia_to_cpp(cobj)))
end

function aruco_getRightBottomCorner(cobj::Board)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Board_cv_aruco_Board_getRightBottomCorner(julia_to_cpp(cobj)))
end

function aruco_matchImagePoints(cobj::Board, detectedCorners::AbstractVector{<:InputArray}, detectedIds::InputArray, objPoints::InputArray, imgPoints::InputArray)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Board_cv_aruco_Board_matchImagePoints(julia_to_cpp(cobj),julia_to_cpp(detectedCorners),julia_to_cpp(detectedIds),julia_to_cpp(objPoints),julia_to_cpp(imgPoints)))
end
aruco_matchImagePoints(cobj::Board, detectedCorners::AbstractVector{<:InputArray}, detectedIds::InputArray; objPoints::InputArray = (CxxMat()), imgPoints::InputArray = (CxxMat())) = aruco_matchImagePoints(cobj, detectedCorners, detectedIds, objPoints, imgPoints)

function aruco_generateImage(cobj::Board, outSize::Size{Int32}, img::InputArray, marginSize::Int64, borderBits::Int64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Board_cv_aruco_Board_generateImage(julia_to_cpp(cobj),julia_to_cpp(outSize),julia_to_cpp(img),julia_to_cpp(marginSize),julia_to_cpp(borderBits)))
end
aruco_generateImage(cobj::Board, outSize::Size{Int32}; img::InputArray = (CxxMat()), marginSize::Int64 = Int64(0), borderBits::Int64 = Int64(1)) = aruco_generateImage(cobj, outSize, img, marginSize, borderBits)

function aruco_Board(objPoints::AbstractVector{<:InputArray}, dictionary::Dictionary, ids::InputArray)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Board_cv_aruco_Board_Board(julia_to_cpp(objPoints),julia_to_cpp(dictionary),julia_to_cpp(ids)))
end
function Base.getproperty(m::GridBoard, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::GridBoard, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function aruco_getGridSize(cobj::GridBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_GridBoard_cv_aruco_GridBoard_getGridSize(julia_to_cpp(cobj)))
end

function aruco_getMarkerLength(cobj::GridBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_GridBoard_cv_aruco_GridBoard_getMarkerLength(julia_to_cpp(cobj)))
end

function aruco_getMarkerSeparation(cobj::GridBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_GridBoard_cv_aruco_GridBoard_getMarkerSeparation(julia_to_cpp(cobj)))
end

function aruco_GridBoard(size::Size{Int32}, markerLength::Float64, markerSeparation::Float64, dictionary::Dictionary, ids::InputArray)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_GridBoard_cv_aruco_GridBoard_GridBoard(julia_to_cpp(size),julia_to_cpp(markerLength),julia_to_cpp(markerSeparation),julia_to_cpp(dictionary),julia_to_cpp(ids)))
end
aruco_GridBoard(size::Size{Int32}, markerLength::Float64, markerSeparation::Float64, dictionary::Dictionary; ids::InputArray = (CxxMat())) = aruco_GridBoard(size, markerLength, markerSeparation, dictionary, ids)
function Base.getproperty(m::CharucoBoard, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CharucoBoard, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function aruco_setLegacyPattern(cobj::CharucoBoard, legacyPattern::Bool)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_setLegacyPattern(julia_to_cpp(cobj),julia_to_cpp(legacyPattern)))
end

function aruco_getLegacyPattern(cobj::CharucoBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_getLegacyPattern(julia_to_cpp(cobj)))
end

function aruco_getChessboardSize(cobj::CharucoBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_getChessboardSize(julia_to_cpp(cobj)))
end

function aruco_getSquareLength(cobj::CharucoBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_getSquareLength(julia_to_cpp(cobj)))
end

function aruco_getMarkerLength(cobj::CharucoBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_getMarkerLength(julia_to_cpp(cobj)))
end

function aruco_getChessboardCorners(cobj::CharucoBoard)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_getChessboardCorners(julia_to_cpp(cobj)))
end

function aruco_checkCharucoCornersCollinear(cobj::CharucoBoard, charucoIds::InputArray)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_checkCharucoCornersCollinear(julia_to_cpp(cobj),julia_to_cpp(charucoIds)))
end

function aruco_CharucoBoard(size::Size{Int32}, squareLength::Float64, markerLength::Float64, dictionary::Dictionary, ids::InputArray)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoBoard_cv_aruco_CharucoBoard_CharucoBoard(julia_to_cpp(size),julia_to_cpp(squareLength),julia_to_cpp(markerLength),julia_to_cpp(dictionary),julia_to_cpp(ids)))
end
aruco_CharucoBoard(size::Size{Int32}, squareLength::Float64, markerLength::Float64, dictionary::Dictionary; ids::InputArray = (CxxMat())) = aruco_CharucoBoard(size, squareLength, markerLength, dictionary, ids)
function Base.getproperty(m::DetectorParameters, s::Symbol)
    if s==:adaptiveThreshWinSizeMin
        return cpp_to_julia(jlopencv_DetectorParameters_get_adaptiveThreshWinSizeMin(m))
    end
    if s==:adaptiveThreshWinSizeMax
        return cpp_to_julia(jlopencv_DetectorParameters_get_adaptiveThreshWinSizeMax(m))
    end
    if s==:adaptiveThreshWinSizeStep
        return cpp_to_julia(jlopencv_DetectorParameters_get_adaptiveThreshWinSizeStep(m))
    end
    if s==:adaptiveThreshConstant
        return cpp_to_julia(jlopencv_DetectorParameters_get_adaptiveThreshConstant(m))
    end
    if s==:minMarkerPerimeterRate
        return cpp_to_julia(jlopencv_DetectorParameters_get_minMarkerPerimeterRate(m))
    end
    if s==:maxMarkerPerimeterRate
        return cpp_to_julia(jlopencv_DetectorParameters_get_maxMarkerPerimeterRate(m))
    end
    if s==:polygonalApproxAccuracyRate
        return cpp_to_julia(jlopencv_DetectorParameters_get_polygonalApproxAccuracyRate(m))
    end
    if s==:minCornerDistanceRate
        return cpp_to_julia(jlopencv_DetectorParameters_get_minCornerDistanceRate(m))
    end
    if s==:minDistanceToBorder
        return cpp_to_julia(jlopencv_DetectorParameters_get_minDistanceToBorder(m))
    end
    if s==:minMarkerDistanceRate
        return cpp_to_julia(jlopencv_DetectorParameters_get_minMarkerDistanceRate(m))
    end
    if s==:minGroupDistance
        return cpp_to_julia(jlopencv_DetectorParameters_get_minGroupDistance(m))
    end
    if s==:cornerRefinementMethod
        return cpp_to_julia(jlopencv_DetectorParameters_get_cornerRefinementMethod(m))
    end
    if s==:cornerRefinementWinSize
        return cpp_to_julia(jlopencv_DetectorParameters_get_cornerRefinementWinSize(m))
    end
    if s==:relativeCornerRefinmentWinSize
        return cpp_to_julia(jlopencv_DetectorParameters_get_relativeCornerRefinmentWinSize(m))
    end
    if s==:cornerRefinementMaxIterations
        return cpp_to_julia(jlopencv_DetectorParameters_get_cornerRefinementMaxIterations(m))
    end
    if s==:cornerRefinementMinAccuracy
        return cpp_to_julia(jlopencv_DetectorParameters_get_cornerRefinementMinAccuracy(m))
    end
    if s==:markerBorderBits
        return cpp_to_julia(jlopencv_DetectorParameters_get_markerBorderBits(m))
    end
    if s==:perspectiveRemovePixelPerCell
        return cpp_to_julia(jlopencv_DetectorParameters_get_perspectiveRemovePixelPerCell(m))
    end
    if s==:perspectiveRemoveIgnoredMarginPerCell
        return cpp_to_julia(jlopencv_DetectorParameters_get_perspectiveRemoveIgnoredMarginPerCell(m))
    end
    if s==:maxErroneousBitsInBorderRate
        return cpp_to_julia(jlopencv_DetectorParameters_get_maxErroneousBitsInBorderRate(m))
    end
    if s==:minOtsuStdDev
        return cpp_to_julia(jlopencv_DetectorParameters_get_minOtsuStdDev(m))
    end
    if s==:errorCorrectionRate
        return cpp_to_julia(jlopencv_DetectorParameters_get_errorCorrectionRate(m))
    end
    if s==:aprilTagQuadDecimate
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagQuadDecimate(m))
    end
    if s==:aprilTagQuadSigma
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagQuadSigma(m))
    end
    if s==:aprilTagMinClusterPixels
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagMinClusterPixels(m))
    end
    if s==:aprilTagMaxNmaxima
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagMaxNmaxima(m))
    end
    if s==:aprilTagCriticalRad
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagCriticalRad(m))
    end
    if s==:aprilTagMaxLineFitMse
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagMaxLineFitMse(m))
    end
    if s==:aprilTagMinWhiteBlackDiff
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagMinWhiteBlackDiff(m))
    end
    if s==:aprilTagDeglitch
        return cpp_to_julia(jlopencv_DetectorParameters_get_aprilTagDeglitch(m))
    end
    if s==:detectInvertedMarker
        return cpp_to_julia(jlopencv_DetectorParameters_get_detectInvertedMarker(m))
    end
    if s==:useAruco3Detection
        return cpp_to_julia(jlopencv_DetectorParameters_get_useAruco3Detection(m))
    end
    if s==:minSideLengthCanonicalImg
        return cpp_to_julia(jlopencv_DetectorParameters_get_minSideLengthCanonicalImg(m))
    end
    if s==:minMarkerLengthRatioOriginalImg
        return cpp_to_julia(jlopencv_DetectorParameters_get_minMarkerLengthRatioOriginalImg(m))
    end
    if s==:validBitIdThreshold
        return cpp_to_julia(jlopencv_DetectorParameters_get_validBitIdThreshold(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DetectorParameters, s::Symbol, v)
    if s==:adaptiveThreshWinSizeMin
        jlopencv_DetectorParameters_set_adaptiveThreshWinSizeMin(m, julia_to_cpp(v))
        return v
    end
    if s==:adaptiveThreshWinSizeMax
        jlopencv_DetectorParameters_set_adaptiveThreshWinSizeMax(m, julia_to_cpp(v))
        return v
    end
    if s==:adaptiveThreshWinSizeStep
        jlopencv_DetectorParameters_set_adaptiveThreshWinSizeStep(m, julia_to_cpp(v))
        return v
    end
    if s==:adaptiveThreshConstant
        jlopencv_DetectorParameters_set_adaptiveThreshConstant(m, julia_to_cpp(v))
        return v
    end
    if s==:minMarkerPerimeterRate
        jlopencv_DetectorParameters_set_minMarkerPerimeterRate(m, julia_to_cpp(v))
        return v
    end
    if s==:maxMarkerPerimeterRate
        jlopencv_DetectorParameters_set_maxMarkerPerimeterRate(m, julia_to_cpp(v))
        return v
    end
    if s==:polygonalApproxAccuracyRate
        jlopencv_DetectorParameters_set_polygonalApproxAccuracyRate(m, julia_to_cpp(v))
        return v
    end
    if s==:minCornerDistanceRate
        jlopencv_DetectorParameters_set_minCornerDistanceRate(m, julia_to_cpp(v))
        return v
    end
    if s==:minDistanceToBorder
        jlopencv_DetectorParameters_set_minDistanceToBorder(m, julia_to_cpp(v))
        return v
    end
    if s==:minMarkerDistanceRate
        jlopencv_DetectorParameters_set_minMarkerDistanceRate(m, julia_to_cpp(v))
        return v
    end
    if s==:minGroupDistance
        jlopencv_DetectorParameters_set_minGroupDistance(m, julia_to_cpp(v))
        return v
    end
    if s==:cornerRefinementMethod
        jlopencv_DetectorParameters_set_cornerRefinementMethod(m, julia_to_cpp(v))
        return v
    end
    if s==:cornerRefinementWinSize
        jlopencv_DetectorParameters_set_cornerRefinementWinSize(m, julia_to_cpp(v))
        return v
    end
    if s==:relativeCornerRefinmentWinSize
        jlopencv_DetectorParameters_set_relativeCornerRefinmentWinSize(m, julia_to_cpp(v))
        return v
    end
    if s==:cornerRefinementMaxIterations
        jlopencv_DetectorParameters_set_cornerRefinementMaxIterations(m, julia_to_cpp(v))
        return v
    end
    if s==:cornerRefinementMinAccuracy
        jlopencv_DetectorParameters_set_cornerRefinementMinAccuracy(m, julia_to_cpp(v))
        return v
    end
    if s==:markerBorderBits
        jlopencv_DetectorParameters_set_markerBorderBits(m, julia_to_cpp(v))
        return v
    end
    if s==:perspectiveRemovePixelPerCell
        jlopencv_DetectorParameters_set_perspectiveRemovePixelPerCell(m, julia_to_cpp(v))
        return v
    end
    if s==:perspectiveRemoveIgnoredMarginPerCell
        jlopencv_DetectorParameters_set_perspectiveRemoveIgnoredMarginPerCell(m, julia_to_cpp(v))
        return v
    end
    if s==:maxErroneousBitsInBorderRate
        jlopencv_DetectorParameters_set_maxErroneousBitsInBorderRate(m, julia_to_cpp(v))
        return v
    end
    if s==:minOtsuStdDev
        jlopencv_DetectorParameters_set_minOtsuStdDev(m, julia_to_cpp(v))
        return v
    end
    if s==:errorCorrectionRate
        jlopencv_DetectorParameters_set_errorCorrectionRate(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagQuadDecimate
        jlopencv_DetectorParameters_set_aprilTagQuadDecimate(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagQuadSigma
        jlopencv_DetectorParameters_set_aprilTagQuadSigma(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagMinClusterPixels
        jlopencv_DetectorParameters_set_aprilTagMinClusterPixels(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagMaxNmaxima
        jlopencv_DetectorParameters_set_aprilTagMaxNmaxima(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagCriticalRad
        jlopencv_DetectorParameters_set_aprilTagCriticalRad(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagMaxLineFitMse
        jlopencv_DetectorParameters_set_aprilTagMaxLineFitMse(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagMinWhiteBlackDiff
        jlopencv_DetectorParameters_set_aprilTagMinWhiteBlackDiff(m, julia_to_cpp(v))
        return v
    end
    if s==:aprilTagDeglitch
        jlopencv_DetectorParameters_set_aprilTagDeglitch(m, julia_to_cpp(v))
        return v
    end
    if s==:detectInvertedMarker
        jlopencv_DetectorParameters_set_detectInvertedMarker(m, julia_to_cpp(v))
        return v
    end
    if s==:useAruco3Detection
        jlopencv_DetectorParameters_set_useAruco3Detection(m, julia_to_cpp(v))
        return v
    end
    if s==:minSideLengthCanonicalImg
        jlopencv_DetectorParameters_set_minSideLengthCanonicalImg(m, julia_to_cpp(v))
        return v
    end
    if s==:minMarkerLengthRatioOriginalImg
        jlopencv_DetectorParameters_set_minMarkerLengthRatioOriginalImg(m, julia_to_cpp(v))
        return v
    end
    if s==:validBitIdThreshold
        jlopencv_DetectorParameters_set_validBitIdThreshold(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function aruco_readDetectorParameters(cobj::DetectorParameters, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_DetectorParameters_cv_aruco_DetectorParameters_readDetectorParameters(julia_to_cpp(cobj),julia_to_cpp(fn)))
end

function aruco_writeDetectorParameters(cobj::DetectorParameters, fs::FileStorage, name::String)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_DetectorParameters_cv_aruco_DetectorParameters_writeDetectorParameters(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
aruco_writeDetectorParameters(cobj::DetectorParameters, fs::FileStorage; name::String = ("")) = aruco_writeDetectorParameters(cobj, fs, name)

function aruco_DetectorParameters()
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_DetectorParameters_cv_aruco_DetectorParameters_DetectorParameters())
end
function Base.getproperty(m::RefineParameters, s::Symbol)
    if s==:minRepDistance
        return cpp_to_julia(jlopencv_RefineParameters_get_minRepDistance(m))
    end
    if s==:errorCorrectionRate
        return cpp_to_julia(jlopencv_RefineParameters_get_errorCorrectionRate(m))
    end
    if s==:checkAllOrders
        return cpp_to_julia(jlopencv_RefineParameters_get_checkAllOrders(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::RefineParameters, s::Symbol, v)
    if s==:minRepDistance
        jlopencv_RefineParameters_set_minRepDistance(m, julia_to_cpp(v))
        return v
    end
    if s==:errorCorrectionRate
        jlopencv_RefineParameters_set_errorCorrectionRate(m, julia_to_cpp(v))
        return v
    end
    if s==:checkAllOrders
        jlopencv_RefineParameters_set_checkAllOrders(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function aruco_readRefineParameters(cobj::RefineParameters, fn::FileNode)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_RefineParameters_cv_aruco_RefineParameters_readRefineParameters(julia_to_cpp(cobj),julia_to_cpp(fn)))
end

function aruco_writeRefineParameters(cobj::RefineParameters, fs::FileStorage, name::String)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_RefineParameters_cv_aruco_RefineParameters_writeRefineParameters(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end
aruco_writeRefineParameters(cobj::RefineParameters, fs::FileStorage; name::String = ("")) = aruco_writeRefineParameters(cobj, fs, name)

function aruco_RefineParameters(minRepDistance::Float64, errorCorrectionRate::Float64, checkAllOrders::Bool)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_RefineParameters_cv_aruco_RefineParameters_RefineParameters(julia_to_cpp(minRepDistance),julia_to_cpp(errorCorrectionRate),julia_to_cpp(checkAllOrders)))
end
aruco_RefineParameters(; minRepDistance::Float64 = Float64(10.), errorCorrectionRate::Float64 = Float64(3.), checkAllOrders::Bool = (true)) = aruco_RefineParameters(minRepDistance, errorCorrectionRate, checkAllOrders)
function Base.getproperty(m::cv_Ptr{ArucoDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ArucoDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function aruco_detectMarkers(cobj::cv_Ptr{T}, image::InputArray, corners::AbstractVector{<:InputArray}, ids::InputArray, rejectedImgPoints::AbstractVector{<:InputArray}) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_detectMarkers(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(ids),julia_to_cpp(rejectedImgPoints)))
end
aruco_detectMarkers(cobj::cv_Ptr{T}, image::InputArray; corners::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), ids::InputArray = (CxxMat()), rejectedImgPoints::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP()))) where {T <: ArucoDetector} = aruco_detectMarkers(cobj, image, corners, ids, rejectedImgPoints)

function aruco_detectMarkersWithConfidence(cobj::cv_Ptr{T}, image::InputArray, corners::AbstractVector{<:InputArray}, ids::InputArray, markersConfidence::InputArray, rejectedImgPoints::AbstractVector{<:InputArray}) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_detectMarkersWithConfidence(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(ids),julia_to_cpp(markersConfidence),julia_to_cpp(rejectedImgPoints)))
end
aruco_detectMarkersWithConfidence(cobj::cv_Ptr{T}, image::InputArray; corners::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), ids::InputArray = (CxxMat()), markersConfidence::InputArray = (CxxMat()), rejectedImgPoints::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP()))) where {T <: ArucoDetector} = aruco_detectMarkersWithConfidence(cobj, image, corners, ids, markersConfidence, rejectedImgPoints)

function aruco_refineDetectedMarkers(cobj::cv_Ptr{T}, image::InputArray, board::Board, detectedCorners::AbstractVector{<:InputArray}, detectedIds::InputArray, rejectedCorners::AbstractVector{<:InputArray}, cameraMatrix::InputArray, distCoeffs::InputArray, recoveredIdxs::InputArray) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_refineDetectedMarkers(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(board),julia_to_cpp(detectedCorners),julia_to_cpp(detectedIds),julia_to_cpp(rejectedCorners),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(recoveredIdxs)))
end
aruco_refineDetectedMarkers(cobj::cv_Ptr{T}, image::InputArray, board::Board, detectedCorners::AbstractVector{<:InputArray}, detectedIds::InputArray, rejectedCorners::AbstractVector{<:InputArray}; cameraMatrix::InputArray = (CxxMat()), distCoeffs::InputArray = (CxxMat()), recoveredIdxs::InputArray = (CxxMat())) where {T <: ArucoDetector} = aruco_refineDetectedMarkers(cobj, image, board, detectedCorners, detectedIds, rejectedCorners, cameraMatrix, distCoeffs, recoveredIdxs)

function aruco_detectMarkersMultiDict(cobj::cv_Ptr{T}, image::InputArray, corners::AbstractVector{<:InputArray}, ids::InputArray, rejectedImgPoints::AbstractVector{<:InputArray}, dictIndices::InputArray) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_detectMarkersMultiDict(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(ids),julia_to_cpp(rejectedImgPoints),julia_to_cpp(dictIndices)))
end
aruco_detectMarkersMultiDict(cobj::cv_Ptr{T}, image::InputArray; corners::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), ids::InputArray = (CxxMat()), rejectedImgPoints::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP())), dictIndices::InputArray = (CxxMat())) where {T <: ArucoDetector} = aruco_detectMarkersMultiDict(cobj, image, corners, ids, rejectedImgPoints, dictIndices)

function aruco_getDictionary(cobj::cv_Ptr{T}) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_getDictionary(julia_to_cpp(cobj)))
end

function aruco_setDictionary(cobj::cv_Ptr{T}, dictionary::Dictionary) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_setDictionary(julia_to_cpp(cobj),julia_to_cpp(dictionary)))
end

function aruco_getDictionaries(cobj::cv_Ptr{T}) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_getDictionaries(julia_to_cpp(cobj)))
end

function aruco_setDictionaries(cobj::cv_Ptr{T}, dictionaries::Array{Dictionary, 1}) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_setDictionaries(julia_to_cpp(cobj),julia_to_cpp(dictionaries)))
end

function aruco_getDetectorParameters(cobj::cv_Ptr{T}) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_getDetectorParameters(julia_to_cpp(cobj)))
end

function aruco_setDetectorParameters(cobj::cv_Ptr{T}, detectorParameters::DetectorParameters) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_setDetectorParameters(julia_to_cpp(cobj),julia_to_cpp(detectorParameters)))
end

function aruco_getRefineParameters(cobj::cv_Ptr{T}) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_getRefineParameters(julia_to_cpp(cobj)))
end

function aruco_setRefineParameters(cobj::cv_Ptr{T}, refineParameters::RefineParameters) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_setRefineParameters(julia_to_cpp(cobj),julia_to_cpp(refineParameters)))
end

function aruco_write(cobj::cv_Ptr{T}, fs::FileStorage, name::String) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end

function aruco_read(cobj::cv_Ptr{T}, fn::FileNode) where {T <: ArucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_read(julia_to_cpp(cobj),julia_to_cpp(fn)))
end

function aruco_ArucoDetector(dictionary::Dictionary, detectorParams::DetectorParameters, refineParams::RefineParameters)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_ArucoDetector(julia_to_cpp(dictionary),julia_to_cpp(detectorParams),julia_to_cpp(refineParams)))
end
aruco_ArucoDetector(; dictionary::Dictionary = (cpp_to_julia(getPredefinedDictionaryOcvggarucoggDICTRaXaRbWP())), detectorParams::DetectorParameters = (cpp_to_julia(DetectorParametersOP())), refineParams::RefineParameters = (cpp_to_julia(RefineParametersOP()))) = aruco_ArucoDetector(dictionary, detectorParams, refineParams)

function aruco_ArucoDetector(dictionaries::Array{Dictionary, 1}, detectorParams::DetectorParameters, refineParams::RefineParameters)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_ArucoDetector_cv_aruco_ArucoDetector_ArucoDetector(julia_to_cpp(dictionaries),julia_to_cpp(detectorParams),julia_to_cpp(refineParams)))
end
aruco_ArucoDetector(dictionaries::Array{Dictionary, 1}; detectorParams::DetectorParameters = (cpp_to_julia(DetectorParametersOP())), refineParams::RefineParameters = (cpp_to_julia(RefineParametersOP()))) = aruco_ArucoDetector(dictionaries, detectorParams, refineParams)
function Base.getproperty(m::CharucoParameters, s::Symbol)
    if s==:cameraMatrix
        return cpp_to_julia(jlopencv_CharucoParameters_get_cameraMatrix(m))
    end
    if s==:distCoeffs
        return cpp_to_julia(jlopencv_CharucoParameters_get_distCoeffs(m))
    end
    if s==:minMarkers
        return cpp_to_julia(jlopencv_CharucoParameters_get_minMarkers(m))
    end
    if s==:tryRefineMarkers
        return cpp_to_julia(jlopencv_CharucoParameters_get_tryRefineMarkers(m))
    end
    if s==:checkMarkers
        return cpp_to_julia(jlopencv_CharucoParameters_get_checkMarkers(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CharucoParameters, s::Symbol, v)
    if s==:cameraMatrix
        jlopencv_CharucoParameters_set_cameraMatrix(m, julia_to_cpp(v))
        return v
    end
    if s==:distCoeffs
        jlopencv_CharucoParameters_set_distCoeffs(m, julia_to_cpp(v))
        return v
    end
    if s==:minMarkers
        jlopencv_CharucoParameters_set_minMarkers(m, julia_to_cpp(v))
        return v
    end
    if s==:tryRefineMarkers
        jlopencv_CharucoParameters_set_tryRefineMarkers(m, julia_to_cpp(v))
        return v
    end
    if s==:checkMarkers
        jlopencv_CharucoParameters_set_checkMarkers(m, julia_to_cpp(v))
        return v
    end
    return Base.setfield!(m, s, v)
end

function aruco_CharucoParameters()
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoParameters_cv_aruco_CharucoParameters_CharucoParameters())
end
function Base.getproperty(m::cv_Ptr{CharucoDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CharucoDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function aruco_getBoard(cobj::cv_Ptr{T}) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_getBoard(julia_to_cpp(cobj)))
end

function aruco_setBoard(cobj::cv_Ptr{T}, board::CharucoBoard) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_setBoard(julia_to_cpp(cobj),julia_to_cpp(board)))
end

function aruco_getCharucoParameters(cobj::cv_Ptr{T}) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_getCharucoParameters(julia_to_cpp(cobj)))
end

function aruco_setCharucoParameters(cobj::cv_Ptr{T}, charucoParameters::CharucoParameters) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_setCharucoParameters(julia_to_cpp(cobj),julia_to_cpp(charucoParameters)))
end

function aruco_getDetectorParameters(cobj::cv_Ptr{T}) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_getDetectorParameters(julia_to_cpp(cobj)))
end

function aruco_setDetectorParameters(cobj::cv_Ptr{T}, detectorParameters::DetectorParameters) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_setDetectorParameters(julia_to_cpp(cobj),julia_to_cpp(detectorParameters)))
end

function aruco_getRefineParameters(cobj::cv_Ptr{T}) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_getRefineParameters(julia_to_cpp(cobj)))
end

function aruco_setRefineParameters(cobj::cv_Ptr{T}, refineParameters::RefineParameters) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_setRefineParameters(julia_to_cpp(cobj),julia_to_cpp(refineParameters)))
end

function aruco_detectBoard(cobj::cv_Ptr{T}, image::InputArray, charucoCorners::InputArray, charucoIds::InputArray, markerCorners::AbstractVector{<:InputArray}, markerIds::InputArray) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_detectBoard(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(charucoCorners),julia_to_cpp(charucoIds),julia_to_cpp(markerCorners),julia_to_cpp(markerIds)))
end
aruco_detectBoard(cobj::cv_Ptr{T}, image::InputArray; charucoCorners::InputArray = (CxxMat()), charucoIds::InputArray = (CxxMat()), markerCorners::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP())), markerIds::InputArray = (CxxMat())) where {T <: CharucoDetector} = aruco_detectBoard(cobj, image, charucoCorners, charucoIds, markerCorners, markerIds)

function aruco_detectDiamonds(cobj::cv_Ptr{T}, image::InputArray, diamondCorners::AbstractVector{<:InputArray}, diamondIds::InputArray, markerCorners::AbstractVector{<:InputArray}, markerIds::InputArray) where {T <: CharucoDetector}
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_detectDiamonds(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(diamondCorners),julia_to_cpp(diamondIds),julia_to_cpp(markerCorners),julia_to_cpp(markerIds)))
end
aruco_detectDiamonds(cobj::cv_Ptr{T}, image::InputArray; diamondCorners::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), diamondIds::InputArray = (CxxMat()), markerCorners::AbstractVector{<:InputArray} = (cpp_to_julia(vectorRMatOP())), markerIds::InputArray = (CxxMat())) where {T <: CharucoDetector} = aruco_detectDiamonds(cobj, image, diamondCorners, diamondIds, markerCorners, markerIds)

function aruco_CharucoDetector(board::CharucoBoard, charucoParams::CharucoParameters, detectorParams::DetectorParameters, refineParams::RefineParameters)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_CharucoDetector_cv_aruco_CharucoDetector_CharucoDetector(julia_to_cpp(board),julia_to_cpp(charucoParams),julia_to_cpp(detectorParams),julia_to_cpp(refineParams)))
end
aruco_CharucoDetector(board::CharucoBoard; charucoParams::CharucoParameters = (cpp_to_julia(CharucoParametersOP())), detectorParams::DetectorParameters = (cpp_to_julia(DetectorParametersOP())), refineParams::RefineParameters = (cpp_to_julia(RefineParametersOP()))) = aruco_CharucoDetector(board, charucoParams, detectorParams, refineParams)

function aruco_Dictionary_getByteListFromBits(bits::InputArray)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_getByteListFromBits(julia_to_cpp(bits)))
end

function aruco_Dictionary_getBitsFromByteList(byteList::InputArray, markerSize::Int64, rotationId::Int64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_Dictionary_getBitsFromByteList(julia_to_cpp(byteList),julia_to_cpp(markerSize),julia_to_cpp(rotationId)))
end
aruco_Dictionary_getBitsFromByteList(byteList::InputArray, markerSize::Int64; rotationId::Int64 = Int64(0)) = aruco_Dictionary_getBitsFromByteList(byteList, markerSize, rotationId)

function aruco_getPredefinedDictionary(dict::Int64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_getPredefinedDictionary(julia_to_cpp(dict)))
end

function aruco_extendDictionary(nMarkers::Int64, markerSize::Int64, baseDictionary::Dictionary, randomSeed::Int64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_extendDictionary(julia_to_cpp(nMarkers),julia_to_cpp(markerSize),julia_to_cpp(baseDictionary),julia_to_cpp(randomSeed)))
end
aruco_extendDictionary(nMarkers::Int64, markerSize::Int64; baseDictionary::Dictionary = (cpp_to_julia(DictionaryOP())), randomSeed::Int64 = Int64(0)) = aruco_extendDictionary(nMarkers, markerSize, baseDictionary, randomSeed)

function aruco_drawDetectedMarkers(image::InputArray, corners::AbstractVector{<:InputArray}, ids::InputArray, borderColor::Scalar)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_drawDetectedMarkers(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(ids),julia_to_cpp(borderColor)))
end
aruco_drawDetectedMarkers(image::InputArray, corners::AbstractVector{<:InputArray}; ids::InputArray = (CxxMat()), borderColor::Scalar = (cpp_to_julia(ScalarOWSGYbbSGWP()))) = aruco_drawDetectedMarkers(image, corners, ids, borderColor)

function aruco_generateImageMarker(dictionary::Dictionary, id::Int64, sidePixels::Int64, img::InputArray, borderBits::Int64)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_generateImageMarker(julia_to_cpp(dictionary),julia_to_cpp(id),julia_to_cpp(sidePixels),julia_to_cpp(img),julia_to_cpp(borderBits)))
end
aruco_generateImageMarker(dictionary::Dictionary, id::Int64, sidePixels::Int64; img::InputArray = (CxxMat()), borderBits::Int64 = Int64(1)) = aruco_generateImageMarker(dictionary, id, sidePixels, img, borderBits)

function aruco_drawDetectedCornersCharuco(image::InputArray, charucoCorners::InputArray, charucoIds::InputArray, cornerColor::Scalar)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_drawDetectedCornersCharuco(julia_to_cpp(image),julia_to_cpp(charucoCorners),julia_to_cpp(charucoIds),julia_to_cpp(cornerColor)))
end
aruco_drawDetectedCornersCharuco(image::InputArray, charucoCorners::InputArray; charucoIds::InputArray = (CxxMat()), cornerColor::Scalar = (cpp_to_julia(ScalarOYbbSGWSGWP()))) = aruco_drawDetectedCornersCharuco(image, charucoCorners, charucoIds, cornerColor)

function aruco_drawDetectedDiamonds(image::InputArray, diamondCorners::AbstractVector{<:InputArray}, diamondIds::InputArray, borderColor::Scalar)
	return cpp_to_julia(jlopencv_cv_aruco_cv_aruco_drawDetectedDiamonds(julia_to_cpp(image),julia_to_cpp(diamondCorners),julia_to_cpp(diamondIds),julia_to_cpp(borderColor)))
end
aruco_drawDetectedDiamonds(image::InputArray, diamondCorners::AbstractVector{<:InputArray}; diamondIds::InputArray = (CxxMat()), borderColor::Scalar = (cpp_to_julia(ScalarOWSGWSGYbbP()))) = aruco_drawDetectedDiamonds(image, diamondCorners, diamondIds, borderColor)



