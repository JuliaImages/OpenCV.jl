
   const SortFlags = Int64 

   const CovarFlags = Int64 

   const ReduceTypes = Int64 

   const RotateFlags = Int64 

   const PCA_Flags = Int64 

   const SVD_Flags = Int64 

   const KmeansFlags = Int64 

   const Formatter_FormatType = Int64 

   const Param = Int64 

   const DecompTypes = Int64 

   const NormTypes = Int64 

   const CmpTypes = Int64 

   const GemmFlags = Int64 

   const DftFlags = Int64 

   const BorderTypes = Int64 

   const SolveLPResult = Int64 

   const FileStorage_Mode = Int64 

   const FileStorage_State = Int64 

   const TermCriteria_Type = Int64 

   const AlgorithmHint = Int64 

   const SpecialFilter = Int64 

   const MorphTypes = Int64 

   const MorphShapes = Int64 

   const InterpolationFlags = Int64 

   const WarpPolarMode = Int64 

   const InterpolationMasks = Int64 

   const DistanceTypes = Int64 

   const DistanceTransformMasks = Int64 

   const ThresholdTypes = Int64 

   const AdaptiveThresholdTypes = Int64 

   const GrabCutClasses = Int64 

   const GrabCutModes = Int64 

   const DistanceTransformLabelTypes = Int64 

   const FloodFillFlags = Int64 

   const ConnectedComponentsTypes = Int64 

   const ConnectedComponentsAlgorithmsTypes = Int64 

   const RetrievalModes = Int64 

   const ContourApproximationModes = Int64 

   const ShapeMatchModes = Int64 

   const HoughModes = Int64 

   const LineSegmentDetectorModes = Int64 

   const HistCompMethods = Int64 

   const ColorConversionCodes = Int64 

   const RectanglesIntersectTypes = Int64 

   const LineTypes = Int64 

   const HersheyFonts = Int64 

   const MarkerTypes = Int64 

   const TemplateMatchModes = Int64 

   const ColormapTypes = Int64 

   const ORB_ScoreType = Int64 

   const FastFeatureDetector_DetectorType = Int64 

   const AgastFeatureDetector_DetectorType = Int64 

   const KAZE_DiffusivityType = Int64 

   const AKAZE_DescriptorType = Int64 

   const DescriptorMatcher_MatcherType = Int64 

   const DrawMatchesFlags = Int64 

   const ImreadModes = Int64 

   const ImwriteFlags = Int64 

   const ImwriteJPEGSamplingFactorParams = Int64 

   const ImwriteTiffCompressionFlags = Int64 

   const ImwriteTiffPredictorFlags = Int64 

   const ImwriteTiffResolutionUnitFlags = Int64 

   const ImwriteEXRTypeFlags = Int64 

   const ImwriteEXRCompressionFlags = Int64 

   const ImwritePNGFlags = Int64 

   const ImwritePNGFilterFlags = Int64 

   const ImwritePAMFlags = Int64 

   const ImwriteHDRCompressionFlags = Int64 

   const ImwriteBMPCompressionFlags = Int64 

   const ImwriteGIFCompressionFlags = Int64 

   const ImageMetadataType = Int64 

   const VideoCaptureAPIs = Int64 

   const VideoCaptureProperties = Int64 

   const VideoWriterProperties = Int64 

   const VideoAccelerationType = Int64 

   const VideoCaptureOBSensorDataType = Int64 

   const VideoCaptureOBSensorGenerators = Int64 

   const VideoCaptureOBSensorProperties = Int64 

   const SolvePnPMethod = Int64 

   const HandEyeCalibrationMethod = Int64 

   const RobotWorldHandEyeCalibrationMethod = Int64 

   const SamplingMethod = Int64 

   const LocalOptimMethod = Int64 

   const ScoreMethod = Int64 

   const NeighborSearchMethod = Int64 

   const PolishingMethod = Int64 

   const CirclesGridFinderParameters_GridType = Int64 

   const UndistortTypes = Int64 

   const WindowFlags = Int64 

   const WindowPropertyFlags = Int64 

   const MouseEventTypes = Int64 

   const MouseEventFlags = Int64 

   const QtFontWeights = Int64 

   const QtFontStyles = Int64 

   const QtButtonTypes = Int64 
function Base.getproperty(m::Algorithm, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Algorithm, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::FileStorage, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FileStorage, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::FileStorage, filename::String, flags::Int64, encoding::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(flags),julia_to_cpp(encoding)))
end
open(cobj::FileStorage, filename::String, flags::Int64; encoding::String = ("")) = open(cobj, filename, flags, encoding)

function isOpened(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_release(julia_to_cpp(cobj)))
end

function releaseAndGetString(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_releaseAndGetString(julia_to_cpp(cobj)))
end

function getFirstTopLevelNode(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_getFirstTopLevelNode(julia_to_cpp(cobj)))
end

function root(cobj::FileStorage, streamidx::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_root(julia_to_cpp(cobj),julia_to_cpp(streamidx)))
end
root(cobj::FileStorage; streamidx::Int64 = Int64(0)) = root(cobj, streamidx)

function write(cobj::FileStorage, name::String, val::Int64)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function write(cobj::FileStorage, name::String, val::Array{String, 1})
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_write(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(val)))
end

function writeComment(cobj::FileStorage, comment::String, append::Bool)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_writeComment(julia_to_cpp(cobj),julia_to_cpp(comment),julia_to_cpp(append)))
end
writeComment(cobj::FileStorage, comment::String; append::Bool = (false)) = writeComment(cobj, comment, append)

function startWriteStruct(cobj::FileStorage, name::String, flags::Int64, typeName::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_startWriteStruct(julia_to_cpp(cobj),julia_to_cpp(name),julia_to_cpp(flags),julia_to_cpp(typeName)))
end
startWriteStruct(cobj::FileStorage, name::String, flags::Int64; typeName::String = ("")) = startWriteStruct(cobj, name, flags, typeName)

function endWriteStruct(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_endWriteStruct(julia_to_cpp(cobj)))
end

function getFormat(cobj::FileStorage)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_getFormat(julia_to_cpp(cobj)))
end


function FileStorage(filename::String, flags::Int64, encoding::String)
	return cpp_to_julia(jlopencv_cv_cv_FileStorage_cv_FileStorage_FileStorage(julia_to_cpp(filename),julia_to_cpp(flags),julia_to_cpp(encoding)))
end
FileStorage(filename::String, flags::Int64; encoding::String = ("")) = FileStorage(filename, flags, encoding)
function Base.getproperty(m::FileNode, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::FileNode, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function keys(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_keys(julia_to_cpp(cobj)))
end

function type(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_type(julia_to_cpp(cobj)))
end

function empty(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_empty(julia_to_cpp(cobj)))
end

function isNone(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isNone(julia_to_cpp(cobj)))
end

function isSeq(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isSeq(julia_to_cpp(cobj)))
end

function isMap(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isMap(julia_to_cpp(cobj)))
end

function isInt(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isInt(julia_to_cpp(cobj)))
end

function isReal(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isReal(julia_to_cpp(cobj)))
end

function isString(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isString(julia_to_cpp(cobj)))
end

function isNamed(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_isNamed(julia_to_cpp(cobj)))
end

function name(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_name(julia_to_cpp(cobj)))
end

function size(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_size(julia_to_cpp(cobj)))
end

function rawSize(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_rawSize(julia_to_cpp(cobj)))
end

function real(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_real(julia_to_cpp(cobj)))
end

function string(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_string(julia_to_cpp(cobj)))
end

function mat(cobj::FileNode)
	return cpp_to_julia(jlopencv_cv_cv_FileNode_cv_FileNode_mat(julia_to_cpp(cobj)))
end

function Base.getproperty(m::KeyPoint, s::Symbol)
    if s==:pt
        return cpp_to_julia(jlopencv_KeyPoint_get_pt(m))
    end
    if s==:size
        return cpp_to_julia(jlopencv_KeyPoint_get_size(m))
    end
    if s==:angle
        return cpp_to_julia(jlopencv_KeyPoint_get_angle(m))
    end
    if s==:response
        return cpp_to_julia(jlopencv_KeyPoint_get_response(m))
    end
    if s==:octave
        return cpp_to_julia(jlopencv_KeyPoint_get_octave(m))
    end
    if s==:class_id
        return cpp_to_julia(jlopencv_KeyPoint_get_class_id(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::KeyPoint, s::Symbol, v)
    return Base.setfield!(m, s, v)
end


function KeyPoint(x::Float64, y::Float64, size::Float64, angle::Float64, response::Float64, octave::Int64, class_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_cv_KeyPoint_KeyPoint(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(size),julia_to_cpp(angle),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint(x::Float64, y::Float64, size::Float64; angle::Float64 = Float64(-1), response::Float64 = Float64(0), octave::Int64 = Int64(0), class_id::Int64 = Int64(-1)) = KeyPoint(x, y, size, angle, response, octave, class_id)
function Base.getproperty(m::DMatch, s::Symbol)
    if s==:queryIdx
        return cpp_to_julia(jlopencv_DMatch_get_queryIdx(m))
    end
    if s==:trainIdx
        return cpp_to_julia(jlopencv_DMatch_get_trainIdx(m))
    end
    if s==:imgIdx
        return cpp_to_julia(jlopencv_DMatch_get_imgIdx(m))
    end
    if s==:distance
        return cpp_to_julia(jlopencv_DMatch_get_distance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::DMatch, s::Symbol, v)
    return Base.setfield!(m, s, v)
end


function DMatch(_queryIdx::Int64, _trainIdx::Int64, _distance::Float64)
	return cpp_to_julia(jlopencv_cv_cv_DMatch_cv_DMatch_DMatch(julia_to_cpp(_queryIdx),julia_to_cpp(_trainIdx),julia_to_cpp(_distance)))
end

function DMatch(_queryIdx::Int64, _trainIdx::Int64, _imgIdx::Int64, _distance::Float64)
	return cpp_to_julia(jlopencv_cv_cv_DMatch_cv_DMatch_DMatch(julia_to_cpp(_queryIdx),julia_to_cpp(_trainIdx),julia_to_cpp(_imgIdx),julia_to_cpp(_distance)))
end
function Base.getproperty(m::Moments, s::Symbol)
    if s==:m00
        return cpp_to_julia(jlopencv_Moments_get_m00(m))
    end
    if s==:m10
        return cpp_to_julia(jlopencv_Moments_get_m10(m))
    end
    if s==:m01
        return cpp_to_julia(jlopencv_Moments_get_m01(m))
    end
    if s==:m20
        return cpp_to_julia(jlopencv_Moments_get_m20(m))
    end
    if s==:m11
        return cpp_to_julia(jlopencv_Moments_get_m11(m))
    end
    if s==:m02
        return cpp_to_julia(jlopencv_Moments_get_m02(m))
    end
    if s==:m30
        return cpp_to_julia(jlopencv_Moments_get_m30(m))
    end
    if s==:m21
        return cpp_to_julia(jlopencv_Moments_get_m21(m))
    end
    if s==:m12
        return cpp_to_julia(jlopencv_Moments_get_m12(m))
    end
    if s==:m03
        return cpp_to_julia(jlopencv_Moments_get_m03(m))
    end
    if s==:mu20
        return cpp_to_julia(jlopencv_Moments_get_mu20(m))
    end
    if s==:mu11
        return cpp_to_julia(jlopencv_Moments_get_mu11(m))
    end
    if s==:mu02
        return cpp_to_julia(jlopencv_Moments_get_mu02(m))
    end
    if s==:mu30
        return cpp_to_julia(jlopencv_Moments_get_mu30(m))
    end
    if s==:mu21
        return cpp_to_julia(jlopencv_Moments_get_mu21(m))
    end
    if s==:mu12
        return cpp_to_julia(jlopencv_Moments_get_mu12(m))
    end
    if s==:mu03
        return cpp_to_julia(jlopencv_Moments_get_mu03(m))
    end
    if s==:nu20
        return cpp_to_julia(jlopencv_Moments_get_nu20(m))
    end
    if s==:nu11
        return cpp_to_julia(jlopencv_Moments_get_nu11(m))
    end
    if s==:nu02
        return cpp_to_julia(jlopencv_Moments_get_nu02(m))
    end
    if s==:nu30
        return cpp_to_julia(jlopencv_Moments_get_nu30(m))
    end
    if s==:nu21
        return cpp_to_julia(jlopencv_Moments_get_nu21(m))
    end
    if s==:nu12
        return cpp_to_julia(jlopencv_Moments_get_nu12(m))
    end
    if s==:nu03
        return cpp_to_julia(jlopencv_Moments_get_nu03(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Moments, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::TickMeter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::TickMeter, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHough}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHough}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHoughBallard}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHoughBallard}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{GeneralizedHoughGuil}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GeneralizedHoughGuil}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{CLAHE}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{CLAHE}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::Subdiv2D, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Subdiv2D, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function initDelaunay(cobj::Subdiv2D, rect::Rect{Int32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_initDelaunay(julia_to_cpp(cobj),julia_to_cpp(rect)))
end

function initDelaunay(cobj::Subdiv2D, rect::Rect{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_initDelaunay(julia_to_cpp(cobj),julia_to_cpp(rect)))
end

function insert(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function insert(cobj::Subdiv2D, ptvec::Array{Point{Float32}, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_insert(julia_to_cpp(cobj),julia_to_cpp(ptvec)))
end

function locate(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_locate(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function findNearest(cobj::Subdiv2D, pt::Point{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_findNearest(julia_to_cpp(cobj),julia_to_cpp(pt)))
end

function getEdgeList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdgeList(julia_to_cpp(cobj)))
end

function getLeadingEdgeList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getLeadingEdgeList(julia_to_cpp(cobj)))
end

function getTriangleList(cobj::Subdiv2D)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getTriangleList(julia_to_cpp(cobj)))
end

function getVoronoiFacetList(cobj::Subdiv2D, idx::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVoronoiFacetList(julia_to_cpp(cobj),julia_to_cpp(idx)))
end

function getVertex(cobj::Subdiv2D, vertex::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getVertex(julia_to_cpp(cobj),julia_to_cpp(vertex)))
end

function getEdge(cobj::Subdiv2D, edge::Int64, nextEdgeType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_getEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(nextEdgeType)))
end

function nextEdge(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_nextEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function rotateEdge(cobj::Subdiv2D, edge::Int64, rotate::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_rotateEdge(julia_to_cpp(cobj),julia_to_cpp(edge),julia_to_cpp(rotate)))
end

function symEdge(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_symEdge(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function edgeOrg(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeOrg(julia_to_cpp(cobj),julia_to_cpp(edge)))
end

function edgeDst(cobj::Subdiv2D, edge::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_edgeDst(julia_to_cpp(cobj),julia_to_cpp(edge)))
end


function Subdiv2D(rect::Rect{Int32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_Subdiv2D(julia_to_cpp(rect)))
end

function Subdiv2D(rect2f::Rect{Float32})
	return cpp_to_julia(jlopencv_cv_cv_Subdiv2D_cv_Subdiv2D_Subdiv2D(julia_to_cpp(rect2f)))
end
function Base.getproperty(m::cv_Ptr{LineSegmentDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{LineSegmentDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{Feature2D}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{Feature2D}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function detect(cobj::cv_Ptr{T}, image::InputArray, mask::InputArray) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask)))
end
detect(cobj::cv_Ptr{T}, image::InputArray; mask::InputArray = (CxxMat())) where {T <: Feature2D} = detect(cobj, image, mask)

function detect(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, masks::AbstractVector{<:InputArray}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detect(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(masks)))
end
detect(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}; masks::AbstractVector{<:InputArray} = ()) where {T <: Feature2D} = detect(cobj, images, masks)

function compute(cobj::cv_Ptr{T}, image::InputArray, keypoints::Array{KeyPoint, 1}, descriptors::InputArray) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, image::InputArray, keypoints::Array{KeyPoint, 1}; descriptors::InputArray = (CxxMat())) where {T <: Feature2D} = compute(cobj, image, keypoints, descriptors)

function compute(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, keypoints::Array{Array{KeyPoint, 1}, 1}, descriptors::AbstractVector{<:InputArray}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_compute(julia_to_cpp(cobj),julia_to_cpp(images),julia_to_cpp(keypoints),julia_to_cpp(descriptors)))
end
compute(cobj::cv_Ptr{T}, images::AbstractVector{<:InputArray}, keypoints::Array{Array{KeyPoint, 1}, 1}; descriptors::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) where {T <: Feature2D} = compute(cobj, images, keypoints, descriptors)

function detectAndCompute(cobj::cv_Ptr{T}, image::InputArray, mask::InputArray, descriptors::InputArray, useProvidedKeypoints::Bool) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_detectAndCompute(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(descriptors),julia_to_cpp(useProvidedKeypoints)))
end
detectAndCompute(cobj::cv_Ptr{T}, image::InputArray, mask::InputArray; descriptors::InputArray = (CxxMat()), useProvidedKeypoints::Bool = (false)) where {T <: Feature2D} = detectAndCompute(cobj, image, mask, descriptors, useProvidedKeypoints)

function descriptorSize(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorSize(julia_to_cpp(cobj)))
end

function descriptorType(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_descriptorType(julia_to_cpp(cobj)))
end

function defaultNorm(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_defaultNorm(julia_to_cpp(cobj)))
end

function write(cobj::cv_Ptr{T}, fileName::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function write(cobj::cv_Ptr{T}, fs::FileStorage, name::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end

function read(cobj::cv_Ptr{T}, fileName::String) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function read(cobj::cv_Ptr{T}, arg1::FileNode) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end

function empty(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_empty(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: Feature2D}
	return cpp_to_julia(jlopencv_cv_cv_Feature2D_cv_Feature2D_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{AffineFeature}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AffineFeature}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setViewParams(cobj::cv_Ptr{T}, tilts::Array{Float32, 1}, rolls::Array{Float32, 1}) where {T <: AffineFeature}
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_cv_AffineFeature_setViewParams(julia_to_cpp(cobj),julia_to_cpp(tilts),julia_to_cpp(rolls)))
end

function getViewParams(cobj::cv_Ptr{T}, tilts::Array{Float32, 1}, rolls::Array{Float32, 1}) where {T <: AffineFeature}
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_cv_AffineFeature_getViewParams(julia_to_cpp(cobj),julia_to_cpp(tilts),julia_to_cpp(rolls)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: AffineFeature}
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_cv_AffineFeature_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SIFT}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SIFT}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getDefaultName(julia_to_cpp(cobj)))
end

function setNFeatures(cobj::cv_Ptr{T}, maxFeatures::Int64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setNFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getNFeatures(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getNFeatures(julia_to_cpp(cobj)))
end

function setNOctaveLayers(cobj::cv_Ptr{T}, nOctaveLayers::Int64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(nOctaveLayers)))
end

function getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getNOctaveLayers(julia_to_cpp(cobj)))
end

function setContrastThreshold(cobj::cv_Ptr{T}, contrastThreshold::Float64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setContrastThreshold(julia_to_cpp(cobj),julia_to_cpp(contrastThreshold)))
end

function getContrastThreshold(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getContrastThreshold(julia_to_cpp(cobj)))
end

function setEdgeThreshold(cobj::cv_Ptr{T}, edgeThreshold::Float64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setEdgeThreshold(julia_to_cpp(cobj),julia_to_cpp(edgeThreshold)))
end

function getEdgeThreshold(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getEdgeThreshold(julia_to_cpp(cobj)))
end

function setSigma(cobj::cv_Ptr{T}, sigma::Float64) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_setSigma(julia_to_cpp(cobj),julia_to_cpp(sigma)))
end

function getSigma(cobj::cv_Ptr{T}) where {T <: SIFT}
	return cpp_to_julia(jlopencv_cv_cv_SIFT_cv_SIFT_getSigma(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{BRISK}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BRISK}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getDefaultName(julia_to_cpp(cobj)))
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Int64) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getThreshold(julia_to_cpp(cobj)))
end

function setOctaves(cobj::cv_Ptr{T}, octaves::Int64) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_setOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function getOctaves(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getOctaves(julia_to_cpp(cobj)))
end

function setPatternScale(cobj::cv_Ptr{T}, patternScale::Float64) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_setPatternScale(julia_to_cpp(cobj),julia_to_cpp(patternScale)))
end

function getPatternScale(cobj::cv_Ptr{T}) where {T <: BRISK}
	return cpp_to_julia(jlopencv_cv_cv_BRISK_cv_BRISK_getPatternScale(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{ORB}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{ORB}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setMaxFeatures(cobj::cv_Ptr{T}, maxFeatures::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getMaxFeatures(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getMaxFeatures(julia_to_cpp(cobj)))
end

function setScaleFactor(cobj::cv_Ptr{T}, scaleFactor::Float64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScaleFactor(julia_to_cpp(cobj),julia_to_cpp(scaleFactor)))
end

function getScaleFactor(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScaleFactor(julia_to_cpp(cobj)))
end

function setNLevels(cobj::cv_Ptr{T}, nlevels::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setNLevels(julia_to_cpp(cobj),julia_to_cpp(nlevels)))
end

function getNLevels(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getNLevels(julia_to_cpp(cobj)))
end

function setEdgeThreshold(cobj::cv_Ptr{T}, edgeThreshold::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setEdgeThreshold(julia_to_cpp(cobj),julia_to_cpp(edgeThreshold)))
end

function getEdgeThreshold(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getEdgeThreshold(julia_to_cpp(cobj)))
end

function setFirstLevel(cobj::cv_Ptr{T}, firstLevel::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFirstLevel(julia_to_cpp(cobj),julia_to_cpp(firstLevel)))
end

function getFirstLevel(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFirstLevel(julia_to_cpp(cobj)))
end

function setWTA_K(cobj::cv_Ptr{T}, wta_k::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setWTA_K(julia_to_cpp(cobj),julia_to_cpp(wta_k)))
end

function getWTA_K(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getWTA_K(julia_to_cpp(cobj)))
end

function setScoreType(cobj::cv_Ptr{T}, scoreType::ORB_ScoreType) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setScoreType(julia_to_cpp(cobj),julia_to_cpp(scoreType)))
end

function getScoreType(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getScoreType(julia_to_cpp(cobj)))
end

function setPatchSize(cobj::cv_Ptr{T}, patchSize::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setPatchSize(julia_to_cpp(cobj),julia_to_cpp(patchSize)))
end

function getPatchSize(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getPatchSize(julia_to_cpp(cobj)))
end

function setFastThreshold(cobj::cv_Ptr{T}, fastThreshold::Int64) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_setFastThreshold(julia_to_cpp(cobj),julia_to_cpp(fastThreshold)))
end

function getFastThreshold(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getFastThreshold(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: ORB}
	return cpp_to_julia(jlopencv_cv_cv_ORB_cv_ORB_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{MSER}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{MSER}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function detectRegions(cobj::cv_Ptr{T}, image::InputArray) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_detectRegions(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function setDelta(cobj::cv_Ptr{T}, delta::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setDelta(julia_to_cpp(cobj),julia_to_cpp(delta)))
end

function getDelta(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDelta(julia_to_cpp(cobj)))
end

function setMinArea(cobj::cv_Ptr{T}, minArea::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinArea(julia_to_cpp(cobj),julia_to_cpp(minArea)))
end

function getMinArea(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinArea(julia_to_cpp(cobj)))
end

function setMaxArea(cobj::cv_Ptr{T}, maxArea::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxArea(julia_to_cpp(cobj),julia_to_cpp(maxArea)))
end

function getMaxArea(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxArea(julia_to_cpp(cobj)))
end

function setMaxVariation(cobj::cv_Ptr{T}, maxVariation::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxVariation(julia_to_cpp(cobj),julia_to_cpp(maxVariation)))
end

function getMaxVariation(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxVariation(julia_to_cpp(cobj)))
end

function setMinDiversity(cobj::cv_Ptr{T}, minDiversity::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinDiversity(julia_to_cpp(cobj),julia_to_cpp(minDiversity)))
end

function getMinDiversity(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinDiversity(julia_to_cpp(cobj)))
end

function setMaxEvolution(cobj::cv_Ptr{T}, maxEvolution::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMaxEvolution(julia_to_cpp(cobj),julia_to_cpp(maxEvolution)))
end

function getMaxEvolution(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMaxEvolution(julia_to_cpp(cobj)))
end

function setAreaThreshold(cobj::cv_Ptr{T}, areaThreshold::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setAreaThreshold(julia_to_cpp(cobj),julia_to_cpp(areaThreshold)))
end

function getAreaThreshold(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getAreaThreshold(julia_to_cpp(cobj)))
end

function setMinMargin(cobj::cv_Ptr{T}, min_margin::Float64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setMinMargin(julia_to_cpp(cobj),julia_to_cpp(min_margin)))
end

function getMinMargin(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getMinMargin(julia_to_cpp(cobj)))
end

function setEdgeBlurSize(cobj::cv_Ptr{T}, edge_blur_size::Int64) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setEdgeBlurSize(julia_to_cpp(cobj),julia_to_cpp(edge_blur_size)))
end

function getEdgeBlurSize(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getEdgeBlurSize(julia_to_cpp(cobj)))
end

function setPass2Only(cobj::cv_Ptr{T}, f::Bool) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_setPass2Only(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getPass2Only(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getPass2Only(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: MSER}
	return cpp_to_julia(jlopencv_cv_cv_MSER_cv_MSER_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{FastFeatureDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FastFeatureDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Int64) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end

function setNonmaxSuppression(cobj::cv_Ptr{T}, f::Bool) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getNonmaxSuppression(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end

function setType(cobj::cv_Ptr{T}, type::FastFeatureDetector_DetectorType) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end

function getType(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getType(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: FastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_cv_FastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{AgastFeatureDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AgastFeatureDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Int64) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getThreshold(julia_to_cpp(cobj)))
end

function setNonmaxSuppression(cobj::cv_Ptr{T}, f::Bool) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setNonmaxSuppression(julia_to_cpp(cobj),julia_to_cpp(f)))
end

function getNonmaxSuppression(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getNonmaxSuppression(julia_to_cpp(cobj)))
end

function setType(cobj::cv_Ptr{T}, type::AgastFeatureDetector_DetectorType) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_setType(julia_to_cpp(cobj),julia_to_cpp(type)))
end

function getType(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getType(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: AgastFeatureDetector}
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_cv_AgastFeatureDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{GFTTDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{GFTTDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setMaxFeatures(cobj::cv_Ptr{T}, maxFeatures::Int64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMaxFeatures(julia_to_cpp(cobj),julia_to_cpp(maxFeatures)))
end

function getMaxFeatures(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMaxFeatures(julia_to_cpp(cobj)))
end

function setQualityLevel(cobj::cv_Ptr{T}, qlevel::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setQualityLevel(julia_to_cpp(cobj),julia_to_cpp(qlevel)))
end

function getQualityLevel(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getQualityLevel(julia_to_cpp(cobj)))
end

function setMinDistance(cobj::cv_Ptr{T}, minDistance::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setMinDistance(julia_to_cpp(cobj),julia_to_cpp(minDistance)))
end

function getMinDistance(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getMinDistance(julia_to_cpp(cobj)))
end

function setBlockSize(cobj::cv_Ptr{T}, blockSize::Int64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getBlockSize(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getBlockSize(julia_to_cpp(cobj)))
end

function setGradientSize(cobj::cv_Ptr{T}, gradientSize_::Int64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setGradientSize(julia_to_cpp(cobj),julia_to_cpp(gradientSize_)))
end

function getGradientSize(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getGradientSize(julia_to_cpp(cobj)))
end

function setHarrisDetector(cobj::cv_Ptr{T}, val::Bool) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setHarrisDetector(julia_to_cpp(cobj),julia_to_cpp(val)))
end

function getHarrisDetector(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getHarrisDetector(julia_to_cpp(cobj)))
end

function setK(cobj::cv_Ptr{T}, k::Float64) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_setK(julia_to_cpp(cobj),julia_to_cpp(k)))
end

function getK(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getK(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: GFTTDetector}
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_cv_GFTTDetector_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{SimpleBlobDetector}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{SimpleBlobDetector}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setParams(cobj::cv_Ptr{T}, params::SimpleBlobDetector_Params) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_setParams(julia_to_cpp(cobj),julia_to_cpp(params)))
end

function getParams(cobj::cv_Ptr{T}) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getParams(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getDefaultName(julia_to_cpp(cobj)))
end

function getBlobContours(cobj::cv_Ptr{T}) where {T <: SimpleBlobDetector}
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_cv_SimpleBlobDetector_getBlobContours(julia_to_cpp(cobj)))
end
function Base.getproperty(m::SimpleBlobDetector_Params, s::Symbol)
    if s==:thresholdStep
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_thresholdStep(m))
    end
    if s==:minThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minThreshold(m))
    end
    if s==:maxThreshold
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxThreshold(m))
    end
    if s==:minRepeatability
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minRepeatability(m))
    end
    if s==:minDistBetweenBlobs
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minDistBetweenBlobs(m))
    end
    if s==:filterByColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByColor(m))
    end
    if s==:blobColor
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_blobColor(m))
    end
    if s==:filterByArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByArea(m))
    end
    if s==:minArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minArea(m))
    end
    if s==:maxArea
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxArea(m))
    end
    if s==:filterByCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByCircularity(m))
    end
    if s==:minCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minCircularity(m))
    end
    if s==:maxCircularity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxCircularity(m))
    end
    if s==:filterByInertia
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByInertia(m))
    end
    if s==:minInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minInertiaRatio(m))
    end
    if s==:maxInertiaRatio
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxInertiaRatio(m))
    end
    if s==:filterByConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_filterByConvexity(m))
    end
    if s==:minConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_minConvexity(m))
    end
    if s==:maxConvexity
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_maxConvexity(m))
    end
    if s==:collectContours
        return cpp_to_julia(jlopencv_SimpleBlobDetector_Params_get_collectContours(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::SimpleBlobDetector_Params, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{KAZE}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{KAZE}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setExtended(cobj::cv_Ptr{T}, extended::Bool) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setExtended(julia_to_cpp(cobj),julia_to_cpp(extended)))
end

function getExtended(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getExtended(julia_to_cpp(cobj)))
end

function setUpright(cobj::cv_Ptr{T}, upright::Bool) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setUpright(julia_to_cpp(cobj),julia_to_cpp(upright)))
end

function getUpright(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getUpright(julia_to_cpp(cobj)))
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getThreshold(julia_to_cpp(cobj)))
end

function setNOctaves(cobj::cv_Ptr{T}, octaves::Int64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function getNOctaves(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getNOctaves(julia_to_cpp(cobj)))
end

function setNOctaveLayers(cobj::cv_Ptr{T}, octaveLayers::Int64) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end

function getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end

function setDiffusivity(cobj::cv_Ptr{T}, diff::KAZE_DiffusivityType) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end

function getDiffusivity(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getDiffusivity(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: KAZE}
	return cpp_to_julia(jlopencv_cv_cv_KAZE_cv_KAZE_getDefaultName(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{AKAZE}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{AKAZE}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function setDescriptorType(cobj::cv_Ptr{T}, dtype::AKAZE_DescriptorType) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorType(julia_to_cpp(cobj),julia_to_cpp(dtype)))
end

function getDescriptorType(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorType(julia_to_cpp(cobj)))
end

function setDescriptorSize(cobj::cv_Ptr{T}, dsize::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorSize(julia_to_cpp(cobj),julia_to_cpp(dsize)))
end

function getDescriptorSize(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorSize(julia_to_cpp(cobj)))
end

function setDescriptorChannels(cobj::cv_Ptr{T}, dch::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDescriptorChannels(julia_to_cpp(cobj),julia_to_cpp(dch)))
end

function getDescriptorChannels(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDescriptorChannels(julia_to_cpp(cobj)))
end

function setThreshold(cobj::cv_Ptr{T}, threshold::Float64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setThreshold(julia_to_cpp(cobj),julia_to_cpp(threshold)))
end

function getThreshold(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getThreshold(julia_to_cpp(cobj)))
end

function setNOctaves(cobj::cv_Ptr{T}, octaves::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setNOctaves(julia_to_cpp(cobj),julia_to_cpp(octaves)))
end

function getNOctaves(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getNOctaves(julia_to_cpp(cobj)))
end

function setNOctaveLayers(cobj::cv_Ptr{T}, octaveLayers::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setNOctaveLayers(julia_to_cpp(cobj),julia_to_cpp(octaveLayers)))
end

function getNOctaveLayers(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getNOctaveLayers(julia_to_cpp(cobj)))
end

function setDiffusivity(cobj::cv_Ptr{T}, diff::KAZE_DiffusivityType) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setDiffusivity(julia_to_cpp(cobj),julia_to_cpp(diff)))
end

function getDiffusivity(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDiffusivity(julia_to_cpp(cobj)))
end

function getDefaultName(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getDefaultName(julia_to_cpp(cobj)))
end

function setMaxPoints(cobj::cv_Ptr{T}, max_points::Int64) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_setMaxPoints(julia_to_cpp(cobj),julia_to_cpp(max_points)))
end

function getMaxPoints(cobj::cv_Ptr{T}) where {T <: AKAZE}
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_cv_AKAZE_getMaxPoints(julia_to_cpp(cobj)))
end
function Base.getproperty(m::cv_Ptr{DescriptorMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{DescriptorMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function add(cobj::cv_Ptr{T}, descriptors::AbstractVector{<:InputArray}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_add(julia_to_cpp(cobj),julia_to_cpp(descriptors)))
end

function getTrainDescriptors(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_getTrainDescriptors(julia_to_cpp(cobj)))
end

function clear(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clear(julia_to_cpp(cobj)))
end

function empty(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_empty(julia_to_cpp(cobj)))
end

function isMaskSupported(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_isMaskSupported(julia_to_cpp(cobj)))
end

function train(cobj::cv_Ptr{T}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_train(julia_to_cpp(cobj)))
end

function match(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, mask::InputArray) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(mask)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray; mask::InputArray = (CxxMat())) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, trainDescriptors, mask)

function match(cobj::cv_Ptr{T}, queryDescriptors::InputArray, masks::AbstractVector{<:InputArray}) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_match(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(masks)))
end
match(cobj::cv_Ptr{T}, queryDescriptors::InputArray; masks::AbstractVector{<:InputArray} = ()) where {T <: DescriptorMatcher} = match(cobj, queryDescriptors, masks)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, k::Int64, mask::InputArray, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(k),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, k::Int64; mask::InputArray = (CxxMat()), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, trainDescriptors, k, mask, compactResult)

function knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, k::Int64, masks::AbstractVector{<:InputArray}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_knnMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(k),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
knnMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, k::Int64; masks::AbstractVector{<:InputArray} = (), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = knnMatch(cobj, queryDescriptors, k, masks, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, maxDistance::Float64, mask::InputArray, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(trainDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(mask),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, trainDescriptors::InputArray, maxDistance::Float64; mask::InputArray = (CxxMat()), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, trainDescriptors, maxDistance, mask, compactResult)

function radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, maxDistance::Float64, masks::AbstractVector{<:InputArray}, compactResult::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_radiusMatch(julia_to_cpp(cobj),julia_to_cpp(queryDescriptors),julia_to_cpp(maxDistance),julia_to_cpp(masks),julia_to_cpp(compactResult)))
end
radiusMatch(cobj::cv_Ptr{T}, queryDescriptors::InputArray, maxDistance::Float64; masks::AbstractVector{<:InputArray} = (), compactResult::Bool = (false)) where {T <: DescriptorMatcher} = radiusMatch(cobj, queryDescriptors, maxDistance, masks, compactResult)

function write(cobj::cv_Ptr{T}, fileName::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function write(cobj::cv_Ptr{T}, fs::FileStorage, name::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_write(julia_to_cpp(cobj),julia_to_cpp(fs),julia_to_cpp(name)))
end

function read(cobj::cv_Ptr{T}, fileName::String) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(fileName)))
end

function read(cobj::cv_Ptr{T}, arg1::FileNode) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_read(julia_to_cpp(cobj),julia_to_cpp(arg1)))
end

function clone(cobj::cv_Ptr{T}, emptyTrainData::Bool) where {T <: DescriptorMatcher}
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_cv_DescriptorMatcher_clone(julia_to_cpp(cobj),julia_to_cpp(emptyTrainData)))
end
clone(cobj::cv_Ptr{T}; emptyTrainData::Bool = (false)) where {T <: DescriptorMatcher} = clone(cobj, emptyTrainData)
function Base.getproperty(m::cv_Ptr{BFMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{BFMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::cv_Ptr{FlannBasedMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{FlannBasedMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::BOWTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWTrainer, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::BOWKMeansTrainer, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWKMeansTrainer, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::BOWImgDescriptorExtractor, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BOWImgDescriptorExtractor, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::Animation, s::Symbol)
    if s==:loop_count
        return cpp_to_julia(jlopencv_Animation_get_loop_count(m))
    end
    if s==:bgcolor
        return cpp_to_julia(jlopencv_Animation_get_bgcolor(m))
    end
    if s==:durations
        return cpp_to_julia(jlopencv_Animation_get_durations(m))
    end
    if s==:frames
        return cpp_to_julia(jlopencv_Animation_get_frames(m))
    end
    if s==:still_image
        return cpp_to_julia(jlopencv_Animation_get_still_image(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::Animation, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::IStreamReader, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::IStreamReader, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::VideoCapture, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoCapture, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::VideoCapture, filename::String, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, filename::String; apiPreference::Int64 = Int64(cv_CAP_ANY)) = open(cobj, filename, apiPreference)

function open(cobj::VideoCapture, filename::String, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function open(cobj::VideoCapture, index::Int64, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
open(cobj::VideoCapture, index::Int64; apiPreference::Int64 = Int64(cv_CAP_ANY)) = open(cobj, index, apiPreference)

function open(cobj::VideoCapture, index::Int64, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(index),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function open(cobj::VideoCapture, source::Ptr{IStreamReader}, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_open(julia_to_cpp(cobj),julia_to_cpp(source),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function isOpened(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_release(julia_to_cpp(cobj)))
end

function grab(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_grab(julia_to_cpp(cobj)))
end

function retrieve(cobj::VideoCapture, image::InputArray, flag::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_retrieve(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(flag)))
end
retrieve(cobj::VideoCapture; image::InputArray = (CxxMat()), flag::Int64 = Int64(0)) = retrieve(cobj, image, flag)

function read(cobj::VideoCapture, image::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_read(julia_to_cpp(cobj),julia_to_cpp(image)))
end
read(cobj::VideoCapture; image::InputArray = (CxxMat())) = read(cobj, image)

function set(cobj::VideoCapture, propId::Int64, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end

function get(cobj::VideoCapture, propId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end

function getBackendName(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getBackendName(julia_to_cpp(cobj)))
end

function setExceptionMode(cobj::VideoCapture, enable::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_setExceptionMode(julia_to_cpp(cobj),julia_to_cpp(enable)))
end

function getExceptionMode(cobj::VideoCapture)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_getExceptionMode(julia_to_cpp(cobj)))
end


function VideoCapture(filename::String, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(filename),julia_to_cpp(apiPreference)))
end
VideoCapture(filename::String; apiPreference::Int64 = Int64(cv_CAP_ANY)) = VideoCapture(filename, apiPreference)

function VideoCapture(filename::String, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function VideoCapture(index::Int64, apiPreference::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(index),julia_to_cpp(apiPreference)))
end
VideoCapture(index::Int64; apiPreference::Int64 = Int64(cv_CAP_ANY)) = VideoCapture(index, apiPreference)

function VideoCapture(index::Int64, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(index),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end

function VideoCapture(source::Ptr{IStreamReader}, apiPreference::Int64, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoCapture_cv_VideoCapture_VideoCapture(julia_to_cpp(source),julia_to_cpp(apiPreference),julia_to_cpp(params)))
end
function Base.getproperty(m::VideoWriter, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::VideoWriter, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function open(cobj::VideoWriter, filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = open(cobj, filename, fourcc, fps, frameSize, isColor)

function open(cobj::VideoWriter, filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
open(cobj::VideoWriter, filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = open(cobj, filename, apiPreference, fourcc, fps, frameSize, isColor)

function open(cobj::VideoWriter, filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function open(cobj::VideoWriter, filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_open(julia_to_cpp(cobj),julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function isOpened(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_isOpened(julia_to_cpp(cobj)))
end

function release(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_release(julia_to_cpp(cobj)))
end

function write(cobj::VideoWriter, image::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_write(julia_to_cpp(cobj),julia_to_cpp(image)))
end

function set(cobj::VideoWriter, propId::Int64, value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_set(julia_to_cpp(cobj),julia_to_cpp(propId),julia_to_cpp(value)))
end

function get(cobj::VideoWriter, propId::Int64)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_get(julia_to_cpp(cobj),julia_to_cpp(propId)))
end

function getBackendName(cobj::VideoWriter)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_getBackendName(julia_to_cpp(cobj)))
end


function VideoWriter(filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = VideoWriter(filename, fourcc, fps, frameSize, isColor)

function VideoWriter(filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, isColor::Bool)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(isColor)))
end
VideoWriter(filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}; isColor::Bool = (true)) = VideoWriter(filename, apiPreference, fourcc, fps, frameSize, isColor)

function VideoWriter(filename::String, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end

function VideoWriter(filename::String, apiPreference::Int64, fourcc::Int64, fps::Float64, frameSize::Size{Int32}, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_cv_VideoWriter_VideoWriter(julia_to_cpp(filename),julia_to_cpp(apiPreference),julia_to_cpp(fourcc),julia_to_cpp(fps),julia_to_cpp(frameSize),julia_to_cpp(params)))
end
function Base.getproperty(m::UsacParams, s::Symbol)
    if s==:confidence
        return cpp_to_julia(jlopencv_UsacParams_get_confidence(m))
    end
    if s==:isParallel
        return cpp_to_julia(jlopencv_UsacParams_get_isParallel(m))
    end
    if s==:loIterations
        return cpp_to_julia(jlopencv_UsacParams_get_loIterations(m))
    end
    if s==:loMethod
        return cpp_to_julia(jlopencv_UsacParams_get_loMethod(m))
    end
    if s==:loSampleSize
        return cpp_to_julia(jlopencv_UsacParams_get_loSampleSize(m))
    end
    if s==:maxIterations
        return cpp_to_julia(jlopencv_UsacParams_get_maxIterations(m))
    end
    if s==:neighborsSearch
        return cpp_to_julia(jlopencv_UsacParams_get_neighborsSearch(m))
    end
    if s==:randomGeneratorState
        return cpp_to_julia(jlopencv_UsacParams_get_randomGeneratorState(m))
    end
    if s==:sampler
        return cpp_to_julia(jlopencv_UsacParams_get_sampler(m))
    end
    if s==:score
        return cpp_to_julia(jlopencv_UsacParams_get_score(m))
    end
    if s==:threshold
        return cpp_to_julia(jlopencv_UsacParams_get_threshold(m))
    end
    if s==:final_polisher
        return cpp_to_julia(jlopencv_UsacParams_get_final_polisher(m))
    end
    if s==:final_polisher_iterations
        return cpp_to_julia(jlopencv_UsacParams_get_final_polisher_iterations(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::UsacParams, s::Symbol, v)
    return Base.setfield!(m, s, v)
end
function Base.getproperty(m::CirclesGridFinderParameters, s::Symbol)
    if s==:densityNeighborhoodSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_densityNeighborhoodSize(m))
    end
    if s==:minDensity
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDensity(m))
    end
    if s==:kmeansAttempts
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_kmeansAttempts(m))
    end
    if s==:minDistanceToAddKeypoint
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minDistanceToAddKeypoint(m))
    end
    if s==:keypointScale
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_keypointScale(m))
    end
    if s==:minGraphConfidence
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minGraphConfidence(m))
    end
    if s==:vertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexGain(m))
    end
    if s==:vertexPenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_vertexPenalty(m))
    end
    if s==:existingVertexGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_existingVertexGain(m))
    end
    if s==:edgeGain
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgeGain(m))
    end
    if s==:edgePenalty
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_edgePenalty(m))
    end
    if s==:convexHullFactor
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_convexHullFactor(m))
    end
    if s==:minRNGEdgeSwitchDist
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_minRNGEdgeSwitchDist(m))
    end
    if s==:gridType
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_gridType(m))
    end
    if s==:squareSize
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_squareSize(m))
    end
    if s==:maxRectifiedDistance
        return cpp_to_julia(jlopencv_CirclesGridFinderParameters_get_maxRectifiedDistance(m))
    end
    return Base.getfield(m, s)
end
function Base.setproperty!(m::CirclesGridFinderParameters, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function Base.getproperty(m::cv_Ptr{StereoMatcher}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StereoMatcher}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function compute(cobj::cv_Ptr{T}, left::InputArray, right::InputArray, disparity::InputArray) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_compute(julia_to_cpp(cobj),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(disparity)))
end
compute(cobj::cv_Ptr{T}, left::InputArray, right::InputArray; disparity::InputArray = (CxxMat())) where {T <: StereoMatcher} = compute(cobj, left, right, disparity)

function getMinDisparity(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getMinDisparity(julia_to_cpp(cobj)))
end

function setMinDisparity(cobj::cv_Ptr{T}, minDisparity::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setMinDisparity(julia_to_cpp(cobj),julia_to_cpp(minDisparity)))
end

function getNumDisparities(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getNumDisparities(julia_to_cpp(cobj)))
end

function setNumDisparities(cobj::cv_Ptr{T}, numDisparities::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setNumDisparities(julia_to_cpp(cobj),julia_to_cpp(numDisparities)))
end

function getBlockSize(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getBlockSize(julia_to_cpp(cobj)))
end

function setBlockSize(cobj::cv_Ptr{T}, blockSize::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getSpeckleWindowSize(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleWindowSize(julia_to_cpp(cobj)))
end

function setSpeckleWindowSize(cobj::cv_Ptr{T}, speckleWindowSize::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleWindowSize(julia_to_cpp(cobj),julia_to_cpp(speckleWindowSize)))
end

function getSpeckleRange(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getSpeckleRange(julia_to_cpp(cobj)))
end

function setSpeckleRange(cobj::cv_Ptr{T}, speckleRange::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setSpeckleRange(julia_to_cpp(cobj),julia_to_cpp(speckleRange)))
end

function getDisp12MaxDiff(cobj::cv_Ptr{T}) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_getDisp12MaxDiff(julia_to_cpp(cobj)))
end

function setDisp12MaxDiff(cobj::cv_Ptr{T}, disp12MaxDiff::Int64) where {T <: StereoMatcher}
	return cpp_to_julia(jlopencv_cv_cv_StereoMatcher_cv_StereoMatcher_setDisp12MaxDiff(julia_to_cpp(cobj),julia_to_cpp(disp12MaxDiff)))
end
function Base.getproperty(m::cv_Ptr{StereoBM}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StereoBM}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getPreFilterType(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterType(julia_to_cpp(cobj)))
end

function setPreFilterType(cobj::cv_Ptr{T}, preFilterType::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterType(julia_to_cpp(cobj),julia_to_cpp(preFilterType)))
end

function getPreFilterSize(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterSize(julia_to_cpp(cobj)))
end

function setPreFilterSize(cobj::cv_Ptr{T}, preFilterSize::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterSize(julia_to_cpp(cobj),julia_to_cpp(preFilterSize)))
end

function getPreFilterCap(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getPreFilterCap(julia_to_cpp(cobj)))
end

function setPreFilterCap(cobj::cv_Ptr{T}, preFilterCap::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end

function getTextureThreshold(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getTextureThreshold(julia_to_cpp(cobj)))
end

function setTextureThreshold(cobj::cv_Ptr{T}, textureThreshold::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setTextureThreshold(julia_to_cpp(cobj),julia_to_cpp(textureThreshold)))
end

function getUniquenessRatio(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getUniquenessRatio(julia_to_cpp(cobj)))
end

function setUniquenessRatio(cobj::cv_Ptr{T}, uniquenessRatio::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end

function getSmallerBlockSize(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getSmallerBlockSize(julia_to_cpp(cobj)))
end

function setSmallerBlockSize(cobj::cv_Ptr{T}, blockSize::Int64) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setSmallerBlockSize(julia_to_cpp(cobj),julia_to_cpp(blockSize)))
end

function getROI1(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI1(julia_to_cpp(cobj)))
end

function setROI1(cobj::cv_Ptr{T}, roi1::Rect{Int32}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI1(julia_to_cpp(cobj),julia_to_cpp(roi1)))
end

function getROI2(cobj::cv_Ptr{T}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_getROI2(julia_to_cpp(cobj)))
end

function setROI2(cobj::cv_Ptr{T}, roi2::Rect{Int32}) where {T <: StereoBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_cv_StereoBM_setROI2(julia_to_cpp(cobj),julia_to_cpp(roi2)))
end
function Base.getproperty(m::cv_Ptr{StereoSGBM}, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::cv_Ptr{StereoSGBM}, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function getPreFilterCap(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getPreFilterCap(julia_to_cpp(cobj)))
end

function setPreFilterCap(cobj::cv_Ptr{T}, preFilterCap::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setPreFilterCap(julia_to_cpp(cobj),julia_to_cpp(preFilterCap)))
end

function getUniquenessRatio(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getUniquenessRatio(julia_to_cpp(cobj)))
end

function setUniquenessRatio(cobj::cv_Ptr{T}, uniquenessRatio::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setUniquenessRatio(julia_to_cpp(cobj),julia_to_cpp(uniquenessRatio)))
end

function getP1(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP1(julia_to_cpp(cobj)))
end

function setP1(cobj::cv_Ptr{T}, P1::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP1(julia_to_cpp(cobj),julia_to_cpp(P1)))
end

function getP2(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getP2(julia_to_cpp(cobj)))
end

function setP2(cobj::cv_Ptr{T}, P2::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setP2(julia_to_cpp(cobj),julia_to_cpp(P2)))
end

function getMode(cobj::cv_Ptr{T}) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_getMode(julia_to_cpp(cobj)))
end

function setMode(cobj::cv_Ptr{T}, mode::Int64) where {T <: StereoSGBM}
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_cv_StereoSGBM_setMode(julia_to_cpp(cobj),julia_to_cpp(mode)))
end

function borderInterpolate(p::Int64, len::Int64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_borderInterpolate(julia_to_cpp(p),julia_to_cpp(len),julia_to_cpp(borderType)))
end

function copyMakeBorder(src::InputArray, top::Int64, bottom::Int64, left::Int64, right::Int64, borderType::Int64, dst::InputArray, value::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_copyMakeBorder(julia_to_cpp(src),julia_to_cpp(top),julia_to_cpp(bottom),julia_to_cpp(left),julia_to_cpp(right),julia_to_cpp(borderType),julia_to_cpp(dst),julia_to_cpp(value)))
end
copyMakeBorder(src::InputArray, top::Int64, bottom::Int64, left::Int64, right::Int64, borderType::Int64; dst::InputArray = (CxxMat()), value::Scalar = (cpp_to_julia(ScalarOP()))) = copyMakeBorder(src, top, bottom, left, right, borderType, dst, value)

function add(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_add(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
add(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = add(src1, src2, dst, mask, dtype)

function subtract(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_subtract(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask),julia_to_cpp(dtype)))
end
subtract(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = subtract(src1, src2, dst, mask, dtype)

function multiply(src1::InputArray, src2::InputArray, dst::InputArray, scale::Float64, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_multiply(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
multiply(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int64 = Int64(-1)) = multiply(src1, src2, dst, scale, dtype)

function divide(src1::InputArray, src2::InputArray, dst::InputArray, scale::Float64, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
divide(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int64 = Int64(-1)) = divide(src1, src2, dst, scale, dtype)

function divide(scale::Float64, src2::InputArray, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_divide(julia_to_cpp(scale),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
divide(scale::Float64, src2::InputArray; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = divide(scale, src2, dst, dtype)

function scaleAdd(src1::InputArray, alpha::Float64, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_scaleAdd(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(dst)))
end
scaleAdd(src1::InputArray, alpha::Float64, src2::InputArray; dst::InputArray = (CxxMat())) = scaleAdd(src1, alpha, src2, dst)

function addWeighted(src1::InputArray, alpha::Float64, src2::InputArray, beta::Float64, gamma::Float64, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_addWeighted(julia_to_cpp(src1),julia_to_cpp(alpha),julia_to_cpp(src2),julia_to_cpp(beta),julia_to_cpp(gamma),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
addWeighted(src1::InputArray, alpha::Float64, src2::InputArray, beta::Float64, gamma::Float64; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = addWeighted(src1, alpha, src2, beta, gamma, dst, dtype)

function convertScaleAbs(src::InputArray, dst::InputArray, alpha::Float64, beta::Float64)
	return cpp_to_julia(jlopencv_cv_cv_convertScaleAbs(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta)))
end
convertScaleAbs(src::InputArray; dst::InputArray = (CxxMat()), alpha::Float64 = Float64(1), beta::Float64 = Float64(0)) = convertScaleAbs(src, dst, alpha, beta)

function convertFp16(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_convertFp16(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertFp16(src::InputArray; dst::InputArray = (CxxMat())) = convertFp16(src, dst)

function LUT(src::InputArray, lut::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_LUT(julia_to_cpp(src),julia_to_cpp(lut),julia_to_cpp(dst)))
end
LUT(src::InputArray, lut::InputArray; dst::InputArray = (CxxMat())) = LUT(src, lut, dst)

function sumElems(src::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sum(julia_to_cpp(src)))
end

function countNonZero(src::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_countNonZero(julia_to_cpp(src)))
end

function findNonZero(src::InputArray, idx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findNonZero(julia_to_cpp(src),julia_to_cpp(idx)))
end
findNonZero(src::InputArray; idx::InputArray = (CxxMat())) = findNonZero(src, idx)

function mean(src::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_mean(julia_to_cpp(src),julia_to_cpp(mask)))
end
mean(src::InputArray; mask::InputArray = (CxxMat())) = mean(src, mask)

function meanStdDev(src::InputArray, mean::InputArray, stddev::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_meanStdDev(julia_to_cpp(src),julia_to_cpp(mean),julia_to_cpp(stddev),julia_to_cpp(mask)))
end
meanStdDev(src::InputArray; mean::InputArray = (CxxMat()), stddev::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = meanStdDev(src, mean, stddev, mask)

function norm(src1::InputArray, normType::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::InputArray; normType::Int64 = Int64(cv_NORM_L2), mask::InputArray = (CxxMat())) = norm(src1, normType, mask)

function norm(src1::InputArray, src2::InputArray, normType::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_norm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(normType),julia_to_cpp(mask)))
end
norm(src1::InputArray, src2::InputArray; normType::Int64 = Int64(cv_NORM_L2), mask::InputArray = (CxxMat())) = norm(src1, src2, normType, mask)

function PSNR(src1::InputArray, src2::InputArray, R::Float64)
	return cpp_to_julia(jlopencv_cv_cv_PSNR(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(R)))
end
PSNR(src1::InputArray, src2::InputArray; R::Float64 = Float64(255)) = PSNR(src1, src2, R)

function batchDistance(src1::InputArray, src2::InputArray, dtype::Int64, dist::InputArray, nidx::InputArray, normType::Int64, K::Int64, mask::InputArray, update::Int64, crosscheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_batchDistance(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dtype),julia_to_cpp(dist),julia_to_cpp(nidx),julia_to_cpp(normType),julia_to_cpp(K),julia_to_cpp(mask),julia_to_cpp(update),julia_to_cpp(crosscheck)))
end
batchDistance(src1::InputArray, src2::InputArray, dtype::Int64; dist::InputArray = (CxxMat()), nidx::InputArray = (CxxMat()), normType::Int64 = Int64(cv_NORM_L2), K::Int64 = Int64(0), mask::InputArray = (CxxMat()), update::Int64 = Int64(0), crosscheck::Bool = (false)) = batchDistance(src1, src2, dtype, dist, nidx, normType, K, mask, update, crosscheck)

function normalize(src::InputArray, dst::InputArray, alpha::Float64, beta::Float64, norm_type::Int64, dtype::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_normalize(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(beta),julia_to_cpp(norm_type),julia_to_cpp(dtype),julia_to_cpp(mask)))
end
normalize(src::InputArray, dst::InputArray; alpha::Float64 = Float64(1), beta::Float64 = Float64(0), norm_type::Int64 = Int64(cv_NORM_L2), dtype::Int64 = Int64(-1), mask::InputArray = (CxxMat())) = normalize(src, dst, alpha, beta, norm_type, dtype, mask)

function minMaxLoc(src::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minMaxLoc(julia_to_cpp(src),julia_to_cpp(mask)))
end
minMaxLoc(src::InputArray; mask::InputArray = (CxxMat())) = minMaxLoc(src, mask)

function reduce(src::InputArray, dim::Int64, rtype::Int64, dst::InputArray, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_reduce(julia_to_cpp(src),julia_to_cpp(dim),julia_to_cpp(rtype),julia_to_cpp(dst),julia_to_cpp(dtype)))
end
reduce(src::InputArray, dim::Int64, rtype::Int64; dst::InputArray = (CxxMat()), dtype::Int64 = Int64(-1)) = reduce(src, dim, rtype, dst, dtype)

function merge(mv::AbstractVector{<:InputArray}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_merge(julia_to_cpp(mv),julia_to_cpp(dst)))
end
merge(mv::AbstractVector{<:InputArray}; dst::InputArray = (CxxMat())) = merge(mv, dst)

function split(m::InputArray, mv::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_split(julia_to_cpp(m),julia_to_cpp(mv)))
end
split(m::InputArray; mv::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = split(m, mv)

function mixChannels(src::AbstractVector{<:InputArray}, dst::AbstractVector{<:InputArray}, fromTo::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_mixChannels(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(fromTo)))
end

function extractChannel(src::InputArray, coi::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_extractChannel(julia_to_cpp(src),julia_to_cpp(coi),julia_to_cpp(dst)))
end
extractChannel(src::InputArray, coi::Int64; dst::InputArray = (CxxMat())) = extractChannel(src, coi, dst)

function insertChannel(src::InputArray, dst::InputArray, coi::Int64)
	return cpp_to_julia(jlopencv_cv_cv_insertChannel(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(coi)))
end

function flip(src::InputArray, flipCode::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_flip(julia_to_cpp(src),julia_to_cpp(flipCode),julia_to_cpp(dst)))
end
flip(src::InputArray, flipCode::Int64; dst::InputArray = (CxxMat())) = flip(src, flipCode, dst)

function rotate(src::InputArray, rotateCode::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_rotate(julia_to_cpp(src),julia_to_cpp(rotateCode),julia_to_cpp(dst)))
end
rotate(src::InputArray, rotateCode::Int64; dst::InputArray = (CxxMat())) = rotate(src, rotateCode, dst)

function repeat(src::InputArray, ny::Int64, nx::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_repeat(julia_to_cpp(src),julia_to_cpp(ny),julia_to_cpp(nx),julia_to_cpp(dst)))
end
repeat(src::InputArray, ny::Int64, nx::Int64; dst::InputArray = (CxxMat())) = repeat(src, ny, nx, dst)

function hconcat(src::AbstractVector{<:InputArray}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_hconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
hconcat(src::AbstractVector{<:InputArray}; dst::InputArray = (CxxMat())) = hconcat(src, dst)

function vconcat(src::AbstractVector{<:InputArray}, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_vconcat(julia_to_cpp(src),julia_to_cpp(dst)))
end
vconcat(src::AbstractVector{<:InputArray}; dst::InputArray = (CxxMat())) = vconcat(src, dst)

function bitwise_and(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_and(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_and(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_and(src1, src2, dst, mask)

function bitwise_or(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_or(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_or(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_or(src1, src2, dst, mask)

function bitwise_xor(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_xor(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_xor(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_xor(src1, src2, dst, mask)

function bitwise_not(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_bitwise_not(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
bitwise_not(src::InputArray; dst::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = bitwise_not(src, dst, mask)

function absdiff(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_absdiff(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
absdiff(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = absdiff(src1, src2, dst)

function copyTo(src::InputArray, mask::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_copyTo(julia_to_cpp(src),julia_to_cpp(mask),julia_to_cpp(dst)))
end
copyTo(src::InputArray, mask::InputArray; dst::InputArray = (CxxMat())) = copyTo(src, mask, dst)

function inRange(src::InputArray, lowerb::InputArray, upperb::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_inRange(julia_to_cpp(src),julia_to_cpp(lowerb),julia_to_cpp(upperb),julia_to_cpp(dst)))
end
inRange(src::InputArray, lowerb::InputArray, upperb::InputArray; dst::InputArray = (CxxMat())) = inRange(src, lowerb, upperb, dst)

function compare(src1::InputArray, src2::InputArray, cmpop::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_compare(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(cmpop),julia_to_cpp(dst)))
end
compare(src1::InputArray, src2::InputArray, cmpop::Int64; dst::InputArray = (CxxMat())) = compare(src1, src2, cmpop, dst)

function min(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_min(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
min(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = min(src1, src2, dst)

function max(src1::InputArray, src2::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_max(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst)))
end
max(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat())) = max(src1, src2, dst)

function sqrt(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sqrt(julia_to_cpp(src),julia_to_cpp(dst)))
end
sqrt(src::InputArray; dst::InputArray = (CxxMat())) = sqrt(src, dst)

function pow(src::InputArray, power::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_pow(julia_to_cpp(src),julia_to_cpp(power),julia_to_cpp(dst)))
end
pow(src::InputArray, power::Float64; dst::InputArray = (CxxMat())) = pow(src, power, dst)

function exp(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_exp(julia_to_cpp(src),julia_to_cpp(dst)))
end
exp(src::InputArray; dst::InputArray = (CxxMat())) = exp(src, dst)

function log(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_log(julia_to_cpp(src),julia_to_cpp(dst)))
end
log(src::InputArray; dst::InputArray = (CxxMat())) = log(src, dst)

function polarToCart(magnitude::InputArray, angle::InputArray, x::InputArray, y::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_polarToCart(julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angleInDegrees)))
end
polarToCart(magnitude::InputArray, angle::InputArray; x::InputArray = (CxxMat()), y::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = polarToCart(magnitude, angle, x, y, angleInDegrees)

function cartToPolar(x::InputArray, y::InputArray, magnitude::InputArray, angle::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_cartToPolar(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
cartToPolar(x::InputArray, y::InputArray; magnitude::InputArray = (CxxMat()), angle::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = cartToPolar(x, y, magnitude, angle, angleInDegrees)

function phase(x::InputArray, y::InputArray, angle::InputArray, angleInDegrees::Bool)
	return cpp_to_julia(jlopencv_cv_cv_phase(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(angle),julia_to_cpp(angleInDegrees)))
end
phase(x::InputArray, y::InputArray; angle::InputArray = (CxxMat()), angleInDegrees::Bool = (false)) = phase(x, y, angle, angleInDegrees)

function magnitude(x::InputArray, y::InputArray, magnitude::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_magnitude(julia_to_cpp(x),julia_to_cpp(y),julia_to_cpp(magnitude)))
end
magnitude(x::InputArray, y::InputArray; magnitude::InputArray = (CxxMat())) = magnitude(x, y, magnitude)

function checkRange(a::InputArray, quiet::Bool, minVal::Float64, maxVal::Float64)
	return cpp_to_julia(jlopencv_cv_cv_checkRange(julia_to_cpp(a),julia_to_cpp(quiet),julia_to_cpp(minVal),julia_to_cpp(maxVal)))
end
checkRange(a::InputArray; quiet::Bool = (true), minVal::Float64 = Float64(-typemax(Float64)), maxVal::Float64 = Float64(typemax(Float64))) = checkRange(a, quiet, minVal, maxVal)

function patchNaNs(a::InputArray, val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_patchNaNs(julia_to_cpp(a),julia_to_cpp(val)))
end
patchNaNs(a::InputArray; val::Float64 = Float64(0)) = patchNaNs(a, val)

function gemm(src1::InputArray, src2::InputArray, alpha::Float64, src3::InputArray, beta::Float64, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_gemm(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(alpha),julia_to_cpp(src3),julia_to_cpp(beta),julia_to_cpp(dst),julia_to_cpp(flags)))
end
gemm(src1::InputArray, src2::InputArray, alpha::Float64, src3::InputArray, beta::Float64; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = gemm(src1, src2, alpha, src3, beta, dst, flags)

function mulTransposed(src::InputArray, aTa::Bool, dst::InputArray, delta::InputArray, scale::Float64, dtype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_mulTransposed(julia_to_cpp(src),julia_to_cpp(aTa),julia_to_cpp(dst),julia_to_cpp(delta),julia_to_cpp(scale),julia_to_cpp(dtype)))
end
mulTransposed(src::InputArray, aTa::Bool; dst::InputArray = (CxxMat()), delta::InputArray = (CxxMat()), scale::Float64 = Float64(1), dtype::Int64 = Int64(-1)) = mulTransposed(src, aTa, dst, delta, scale, dtype)

function transpose(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_transpose(julia_to_cpp(src),julia_to_cpp(dst)))
end
transpose(src::InputArray; dst::InputArray = (CxxMat())) = transpose(src, dst)

function transform(src::InputArray, m::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_transform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
transform(src::InputArray, m::InputArray; dst::InputArray = (CxxMat())) = transform(src, m, dst)

function perspectiveTransform(src::InputArray, m::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_perspectiveTransform(julia_to_cpp(src),julia_to_cpp(m),julia_to_cpp(dst)))
end
perspectiveTransform(src::InputArray, m::InputArray; dst::InputArray = (CxxMat())) = perspectiveTransform(src, m, dst)

function completeSymm(m::InputArray, lowerToUpper::Bool)
	return cpp_to_julia(jlopencv_cv_cv_completeSymm(julia_to_cpp(m),julia_to_cpp(lowerToUpper)))
end
completeSymm(m::InputArray; lowerToUpper::Bool = (false)) = completeSymm(m, lowerToUpper)

function setIdentity(mtx::InputArray, s::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_setIdentity(julia_to_cpp(mtx),julia_to_cpp(s)))
end
setIdentity(mtx::InputArray; s::Scalar = (cpp_to_julia(ScalarOXP()))) = setIdentity(mtx, s)

function determinant(mtx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_determinant(julia_to_cpp(mtx)))
end

function trace(mtx::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_trace(julia_to_cpp(mtx)))
end

function invert(src::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_invert(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
invert(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_DECOMP_LU)) = invert(src, dst, flags)

function solve(src1::InputArray, src2::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solve(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(flags)))
end
solve(src1::InputArray, src2::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_DECOMP_LU)) = solve(src1, src2, dst, flags)

function sort(src::InputArray, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sort(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sort(src::InputArray, flags::Int64; dst::InputArray = (CxxMat())) = sort(src, flags, dst)

function sortIdx(src::InputArray, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sortIdx(julia_to_cpp(src),julia_to_cpp(flags),julia_to_cpp(dst)))
end
sortIdx(src::InputArray, flags::Int64; dst::InputArray = (CxxMat())) = sortIdx(src, flags, dst)

function solveCubic(coeffs::InputArray, roots::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveCubic(julia_to_cpp(coeffs),julia_to_cpp(roots)))
end
solveCubic(coeffs::InputArray; roots::InputArray = (CxxMat())) = solveCubic(coeffs, roots)

function solvePoly(coeffs::InputArray, roots::InputArray, maxIters::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solvePoly(julia_to_cpp(coeffs),julia_to_cpp(roots),julia_to_cpp(maxIters)))
end
solvePoly(coeffs::InputArray; roots::InputArray = (CxxMat()), maxIters::Int64 = Int64(300)) = solvePoly(coeffs, roots, maxIters)

function eigen(src::InputArray, eigenvalues::InputArray, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_eigen(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigen(src::InputArray; eigenvalues::InputArray = (CxxMat()), eigenvectors::InputArray = (CxxMat())) = eigen(src, eigenvalues, eigenvectors)

function eigenNonSymmetric(src::InputArray, eigenvalues::InputArray, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_eigenNonSymmetric(julia_to_cpp(src),julia_to_cpp(eigenvalues),julia_to_cpp(eigenvectors)))
end
eigenNonSymmetric(src::InputArray; eigenvalues::InputArray = (CxxMat()), eigenvectors::InputArray = (CxxMat())) = eigenNonSymmetric(src, eigenvalues, eigenvectors)

function calcCovarMatrix(samples::InputArray, mean::InputArray, flags::Int64, covar::InputArray, ctype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_calcCovarMatrix(julia_to_cpp(samples),julia_to_cpp(mean),julia_to_cpp(flags),julia_to_cpp(covar),julia_to_cpp(ctype)))
end
calcCovarMatrix(samples::InputArray, mean::InputArray, flags::Int64; covar::InputArray = (CxxMat()), ctype::Int64 = Int64(CV_64F)) = calcCovarMatrix(samples, mean, flags, covar, ctype)

function PCACompute(data::InputArray, mean::InputArray, eigenvectors::InputArray, maxComponents::Int64)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(maxComponents)))
end
PCACompute(data::InputArray, mean::InputArray; eigenvectors::InputArray = (CxxMat()), maxComponents::Int64 = Int64(0)) = PCACompute(data, mean, eigenvectors, maxComponents)

function PCACompute2(data::InputArray, mean::InputArray, eigenvectors::InputArray, eigenvalues::InputArray, maxComponents::Int64)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues),julia_to_cpp(maxComponents)))
end
PCACompute2(data::InputArray, mean::InputArray; eigenvectors::InputArray = (CxxMat()), eigenvalues::InputArray = (CxxMat()), maxComponents::Int64 = Int64(0)) = PCACompute2(data, mean, eigenvectors, eigenvalues, maxComponents)

function PCACompute(data::InputArray, mean::InputArray, retainedVariance::Float64, eigenvectors::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors)))
end
PCACompute(data::InputArray, mean::InputArray, retainedVariance::Float64; eigenvectors::InputArray = (CxxMat())) = PCACompute(data, mean, retainedVariance, eigenvectors)

function PCACompute2(data::InputArray, mean::InputArray, retainedVariance::Float64, eigenvectors::InputArray, eigenvalues::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCACompute(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(retainedVariance),julia_to_cpp(eigenvectors),julia_to_cpp(eigenvalues)))
end
PCACompute2(data::InputArray, mean::InputArray, retainedVariance::Float64; eigenvectors::InputArray = (CxxMat()), eigenvalues::InputArray = (CxxMat())) = PCACompute2(data, mean, retainedVariance, eigenvectors, eigenvalues)

function PCAProject(data::InputArray, mean::InputArray, eigenvectors::InputArray, result::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCAProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCAProject(data::InputArray, mean::InputArray, eigenvectors::InputArray; result::InputArray = (CxxMat())) = PCAProject(data, mean, eigenvectors, result)

function PCABackProject(data::InputArray, mean::InputArray, eigenvectors::InputArray, result::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_PCABackProject(julia_to_cpp(data),julia_to_cpp(mean),julia_to_cpp(eigenvectors),julia_to_cpp(result)))
end
PCABackProject(data::InputArray, mean::InputArray, eigenvectors::InputArray; result::InputArray = (CxxMat())) = PCABackProject(data, mean, eigenvectors, result)

function SVDecomp(src::InputArray, w::InputArray, u::InputArray, vt::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_SVDecomp(julia_to_cpp(src),julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(flags)))
end
SVDecomp(src::InputArray; w::InputArray = (CxxMat()), u::InputArray = (CxxMat()), vt::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = SVDecomp(src, w, u, vt, flags)

function SVBackSubst(w::InputArray, u::InputArray, vt::InputArray, rhs::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_SVBackSubst(julia_to_cpp(w),julia_to_cpp(u),julia_to_cpp(vt),julia_to_cpp(rhs),julia_to_cpp(dst)))
end
SVBackSubst(w::InputArray, u::InputArray, vt::InputArray, rhs::InputArray; dst::InputArray = (CxxMat())) = SVBackSubst(w, u, vt, rhs, dst)

function Mahalanobis(v1::InputArray, v2::InputArray, icovar::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_Mahalanobis(julia_to_cpp(v1),julia_to_cpp(v2),julia_to_cpp(icovar)))
end

function dft(src::InputArray, dst::InputArray, flags::Int64, nonzeroRows::Int64)
	return cpp_to_julia(jlopencv_cv_cv_dft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
dft(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0), nonzeroRows::Int64 = Int64(0)) = dft(src, dst, flags, nonzeroRows)

function idft(src::InputArray, dst::InputArray, flags::Int64, nonzeroRows::Int64)
	return cpp_to_julia(jlopencv_cv_cv_idft(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(nonzeroRows)))
end
idft(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0), nonzeroRows::Int64 = Int64(0)) = idft(src, dst, flags, nonzeroRows)

function dct(src::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_dct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
dct(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = dct(src, dst, flags)

function idct(src::InputArray, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_idct(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(flags)))
end
idct(src::InputArray; dst::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = idct(src, dst, flags)

function mulSpectrums(a::InputArray, b::InputArray, flags::Int64, c::InputArray, conjB::Bool)
	return cpp_to_julia(jlopencv_cv_cv_mulSpectrums(julia_to_cpp(a),julia_to_cpp(b),julia_to_cpp(flags),julia_to_cpp(c),julia_to_cpp(conjB)))
end
mulSpectrums(a::InputArray, b::InputArray, flags::Int64; c::InputArray = (CxxMat()), conjB::Bool = (false)) = mulSpectrums(a, b, flags, c, conjB)

function getOptimalDFTSize(vecsize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalDFTSize(julia_to_cpp(vecsize)))
end

function setRNGSeed(seed::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setRNGSeed(julia_to_cpp(seed)))
end

function randu(dst::InputArray, low::InputArray, high::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_randu(julia_to_cpp(dst),julia_to_cpp(low),julia_to_cpp(high)))
end

function randn(dst::InputArray, mean::InputArray, stddev::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_randn(julia_to_cpp(dst),julia_to_cpp(mean),julia_to_cpp(stddev)))
end

function randShuffle(dst::InputArray, iterFactor::Float64)
	return cpp_to_julia(jlopencv_cv_cv_randShuffle(julia_to_cpp(dst),julia_to_cpp(iterFactor)))
end
randShuffle(dst::InputArray; iterFactor::Float64 = Float64(1)) = randShuffle(dst, iterFactor)

function kmeans(data::InputArray, K::Int64, bestLabels::InputArray, criteria::TermCriteria, attempts::Int64, flags::Int64, centers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_kmeans(julia_to_cpp(data),julia_to_cpp(K),julia_to_cpp(bestLabels),julia_to_cpp(criteria),julia_to_cpp(attempts),julia_to_cpp(flags),julia_to_cpp(centers)))
end
kmeans(data::InputArray, K::Int64, bestLabels::InputArray, criteria::TermCriteria, attempts::Int64, flags::Int64; centers::InputArray = (CxxMat())) = kmeans(data, K, bestLabels, criteria, attempts, flags, centers)

function cubeRoot(val::Float64)
	return cpp_to_julia(jlopencv_cv_cv_cubeRoot(julia_to_cpp(val)))
end

function fastAtan2(y::Float64, x::Float64)
	return cpp_to_julia(jlopencv_cv_cv_fastAtan2(julia_to_cpp(y),julia_to_cpp(x)))
end

function solveLP(Func::InputArray, Constr::InputArray, constr_eps::Float64, z::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveLP(julia_to_cpp(Func),julia_to_cpp(Constr),julia_to_cpp(constr_eps),julia_to_cpp(z)))
end
solveLP(Func::InputArray, Constr::InputArray, constr_eps::Float64; z::InputArray = (CxxMat())) = solveLP(Func, Constr, constr_eps, z)

function solveLP(Func::InputArray, Constr::InputArray, z::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solveLP(julia_to_cpp(Func),julia_to_cpp(Constr),julia_to_cpp(z)))
end
solveLP(Func::InputArray, Constr::InputArray; z::InputArray = (CxxMat())) = solveLP(Func, Constr, z)

function KeyPoint_convert(keypoints::Array{KeyPoint, 1}, keypointIndexes::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(keypoints),julia_to_cpp(keypointIndexes)))
end
KeyPoint_convert(keypoints::Array{KeyPoint, 1}; keypointIndexes::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = KeyPoint_convert(keypoints, keypointIndexes)

function KeyPoint_convert(points2f::Array{Point{Float32}, 1}, size::Float64, response::Float64, octave::Int64, class_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_convert(julia_to_cpp(points2f),julia_to_cpp(size),julia_to_cpp(response),julia_to_cpp(octave),julia_to_cpp(class_id)))
end
KeyPoint_convert(points2f::Array{Point{Float32}, 1}; size::Float64 = Float64(1), response::Float64 = Float64(1), octave::Int64 = Int64(0), class_id::Int64 = Int64(-1)) = KeyPoint_convert(points2f, size, response, octave, class_id)

function KeyPoint_overlap(kp1::KeyPoint, kp2::KeyPoint)
	return cpp_to_julia(jlopencv_cv_cv_KeyPoint_overlap(julia_to_cpp(kp1),julia_to_cpp(kp2)))
end

function setNumThreads(nthreads::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setNumThreads(julia_to_cpp(nthreads)))
end

function getNumThreads()
	return cpp_to_julia(jlopencv_cv_cv_getNumThreads())
end

function getThreadNum()
	return cpp_to_julia(jlopencv_cv_cv_getThreadNum())
end

function getBuildInformation()
	return cpp_to_julia(jlopencv_cv_cv_getBuildInformation())
end

function getVersionString()
	return cpp_to_julia(jlopencv_cv_cv_getVersionString())
end

function getVersionMajor()
	return cpp_to_julia(jlopencv_cv_cv_getVersionMajor())
end

function getVersionMinor()
	return cpp_to_julia(jlopencv_cv_cv_getVersionMinor())
end

function getVersionRevision()
	return cpp_to_julia(jlopencv_cv_cv_getVersionRevision())
end

function getTickCount()
	return cpp_to_julia(jlopencv_cv_cv_getTickCount())
end

function getTickFrequency()
	return cpp_to_julia(jlopencv_cv_cv_getTickFrequency())
end

function getGaussianKernel(ksize::Int64, sigma::Float64, ktype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getGaussianKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(ktype)))
end
getGaussianKernel(ksize::Int64, sigma::Float64; ktype::Int64 = Int64(CV_64F)) = getGaussianKernel(ksize, sigma, ktype)

function getDerivKernels(dx::Int64, dy::Int64, ksize::Int64, kx::InputArray, ky::InputArray, normalize::Bool, ktype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getDerivKernels(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(kx),julia_to_cpp(ky),julia_to_cpp(normalize),julia_to_cpp(ktype)))
end
getDerivKernels(dx::Int64, dy::Int64, ksize::Int64; kx::InputArray = (CxxMat()), ky::InputArray = (CxxMat()), normalize::Bool = (false), ktype::Int64 = Int64(CV_32F)) = getDerivKernels(dx, dy, ksize, kx, ky, normalize, ktype)

function getGaborKernel(ksize::Size{Int32}, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64, psi::Float64, ktype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getGaborKernel(julia_to_cpp(ksize),julia_to_cpp(sigma),julia_to_cpp(theta),julia_to_cpp(lambd),julia_to_cpp(gamma),julia_to_cpp(psi),julia_to_cpp(ktype)))
end
getGaborKernel(ksize::Size{Int32}, sigma::Float64, theta::Float64, lambd::Float64, gamma::Float64; psi::Float64 = Float64(pi*0.5), ktype::Int64 = Int64(CV_64F)) = getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype)

function getStructuringElement(shape::Int64, ksize::Size{Int32}, anchor::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_getStructuringElement(julia_to_cpp(shape),julia_to_cpp(ksize),julia_to_cpp(anchor)))
end
getStructuringElement(shape::Int64, ksize::Size{Int32}; anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP()))) = getStructuringElement(shape, ksize, anchor)

function medianBlur(src::InputArray, ksize::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_medianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst)))
end
medianBlur(src::InputArray, ksize::Int64; dst::InputArray = (CxxMat())) = medianBlur(src, ksize, dst)

function GaussianBlur(src::InputArray, ksize::Size{Int32}, sigmaX::Float64, dst::InputArray, sigmaY::Float64, borderType::Int64, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_GaussianBlur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(sigmaX),julia_to_cpp(dst),julia_to_cpp(sigmaY),julia_to_cpp(borderType),julia_to_cpp(hint)))
end
GaussianBlur(src::InputArray, ksize::Size{Int32}, sigmaX::Float64; dst::InputArray = (CxxMat()), sigmaY::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = GaussianBlur(src, ksize, sigmaX, dst, sigmaY, borderType, hint)

function bilateralFilter(src::InputArray, d::Int64, sigmaColor::Float64, sigmaSpace::Float64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_bilateralFilter(julia_to_cpp(src),julia_to_cpp(d),julia_to_cpp(sigmaColor),julia_to_cpp(sigmaSpace),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
bilateralFilter(src::InputArray, d::Int64, sigmaColor::Float64, sigmaSpace::Float64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = bilateralFilter(src, d, sigmaColor, sigmaSpace, dst, borderType)

function boxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, normalize::Bool, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_boxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
boxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), normalize::Bool = (true), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = boxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function sqrBoxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, normalize::Bool, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_sqrBoxFilter(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(normalize),julia_to_cpp(borderType)))
end
sqrBoxFilter(src::InputArray, ddepth::Int64, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSGTXP())), normalize::Bool = (true), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = sqrBoxFilter(src, ddepth, ksize, dst, anchor, normalize, borderType)

function blur(src::InputArray, ksize::Size{Int32}, dst::InputArray, anchor::Point{Int32}, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_blur(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(borderType)))
end
blur(src::InputArray, ksize::Size{Int32}; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = blur(src, ksize, dst, anchor, borderType)

function filter2D(src::InputArray, ddepth::Int64, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_filter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
filter2D(src::InputArray, ddepth::Int64, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = filter2D(src, ddepth, kernel, dst, anchor, delta, borderType)

function sepFilter2D(src::InputArray, ddepth::Int64, kernelX::InputArray, kernelY::InputArray, dst::InputArray, anchor::Point{Int32}, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_sepFilter2D(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(kernelX),julia_to_cpp(kernelY),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
sepFilter2D(src::InputArray, ddepth::Int64, kernelX::InputArray, kernelY::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = sepFilter2D(src, ddepth, kernelX, kernelY, dst, anchor, delta, borderType)

function Sobel(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64, dst::InputArray, ksize::Int64, scale::Float64, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Sobel(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Sobel(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64; dst::InputArray = (CxxMat()), ksize::Int64 = Int64(3), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = Sobel(src, ddepth, dx, dy, dst, ksize, scale, delta, borderType)

function spatialGradient(src::InputArray, dx::InputArray, dy::InputArray, ksize::Int64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_spatialGradient(julia_to_cpp(src),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
spatialGradient(src::InputArray; dx::InputArray = (CxxMat()), dy::InputArray = (CxxMat()), ksize::Int64 = Int64(3), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = spatialGradient(src, dx, dy, ksize, borderType)

function Scharr(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64, dst::InputArray, scale::Float64, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Scharr(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(dst),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Scharr(src::InputArray, ddepth::Int64, dx::Int64, dy::Int64; dst::InputArray = (CxxMat()), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = Scharr(src, ddepth, dx, dy, dst, scale, delta, borderType)

function Laplacian(src::InputArray, ddepth::Int64, dst::InputArray, ksize::Int64, scale::Float64, delta::Float64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_Laplacian(julia_to_cpp(src),julia_to_cpp(ddepth),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(scale),julia_to_cpp(delta),julia_to_cpp(borderType)))
end
Laplacian(src::InputArray, ddepth::Int64; dst::InputArray = (CxxMat()), ksize::Int64 = Int64(1), scale::Float64 = Float64(1), delta::Float64 = Float64(0), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = Laplacian(src, ddepth, dst, ksize, scale, delta, borderType)

function Canny(image::InputArray, threshold1::Float64, threshold2::Float64, edges::InputArray, apertureSize::Int64, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(image),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(apertureSize),julia_to_cpp(L2gradient)))
end
Canny(image::InputArray, threshold1::Float64, threshold2::Float64; edges::InputArray = (CxxMat()), apertureSize::Int64 = Int64(3), L2gradient::Bool = (false)) = Canny(image, threshold1, threshold2, edges, apertureSize, L2gradient)

function Canny(dx::InputArray, dy::InputArray, threshold1::Float64, threshold2::Float64, edges::InputArray, L2gradient::Bool)
	return cpp_to_julia(jlopencv_cv_cv_Canny(julia_to_cpp(dx),julia_to_cpp(dy),julia_to_cpp(threshold1),julia_to_cpp(threshold2),julia_to_cpp(edges),julia_to_cpp(L2gradient)))
end
Canny(dx::InputArray, dy::InputArray, threshold1::Float64, threshold2::Float64; edges::InputArray = (CxxMat()), L2gradient::Bool = (false)) = Canny(dx, dy, threshold1, threshold2, edges, L2gradient)

function cornerMinEigenVal(src::InputArray, blockSize::Int64, dst::InputArray, ksize::Int64, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_cornerMinEigenVal(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(dst),julia_to_cpp(ksize),julia_to_cpp(borderType)))
end
cornerMinEigenVal(src::InputArray, blockSize::Int64; dst::InputArray = (CxxMat()), ksize::Int64 = Int64(3), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = cornerMinEigenVal(src, blockSize, dst, ksize, borderType)

function cornerHarris(src::InputArray, blockSize::Int64, ksize::Int64, k::Float64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_cornerHarris(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(k),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerHarris(src::InputArray, blockSize::Int64, ksize::Int64, k::Float64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = cornerHarris(src, blockSize, ksize, k, dst, borderType)

function cornerEigenValsAndVecs(src::InputArray, blockSize::Int64, ksize::Int64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_cornerEigenValsAndVecs(julia_to_cpp(src),julia_to_cpp(blockSize),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
cornerEigenValsAndVecs(src::InputArray, blockSize::Int64, ksize::Int64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = cornerEigenValsAndVecs(src, blockSize, ksize, dst, borderType)

function preCornerDetect(src::InputArray, ksize::Int64, dst::InputArray, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_preCornerDetect(julia_to_cpp(src),julia_to_cpp(ksize),julia_to_cpp(dst),julia_to_cpp(borderType)))
end
preCornerDetect(src::InputArray, ksize::Int64; dst::InputArray = (CxxMat()), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = preCornerDetect(src, ksize, dst, borderType)

function cornerSubPix(image::InputArray, corners::InputArray, winSize::Size{Int32}, zeroZone::Size{Int32}, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_cornerSubPix(julia_to_cpp(image),julia_to_cpp(corners),julia_to_cpp(winSize),julia_to_cpp(zeroZone),julia_to_cpp(criteria)))
end

function goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, corners::InputArray, mask::InputArray, blockSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(corners),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64; corners::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), blockSize::Int64 = Int64(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, corners, mask, blockSize, useHarrisDetector, k)

function goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray, blockSize::Int64, gradientSize::Int64, corners::InputArray, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(corners),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrack(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray, blockSize::Int64, gradientSize::Int64; corners::InputArray = (CxxMat()), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrack(image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, corners, useHarrisDetector, k)

function goodFeaturesToTrackWithQuality(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray, corners::InputArray, cornersQuality::InputArray, blockSize::Int64, gradientSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_goodFeaturesToTrack(julia_to_cpp(image),julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(mask),julia_to_cpp(corners),julia_to_cpp(cornersQuality),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
goodFeaturesToTrackWithQuality(image::InputArray, maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, mask::InputArray; corners::InputArray = (CxxMat()), cornersQuality::InputArray = (CxxMat()), blockSize::Int64 = Int64(3), gradientSize::Int64 = Int64(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = goodFeaturesToTrackWithQuality(image, maxCorners, qualityLevel, minDistance, mask, corners, cornersQuality, blockSize, gradientSize, useHarrisDetector, k)

function HoughLines(image::InputArray, rho::Float64, theta::Float64, threshold::Int64, lines::InputArray, srn::Float64, stn::Float64, min_theta::Float64, max_theta::Float64, use_edgeval::Bool)
	return cpp_to_julia(jlopencv_cv_cv_HoughLines(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(srn),julia_to_cpp(stn),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(use_edgeval)))
end
HoughLines(image::InputArray, rho::Float64, theta::Float64, threshold::Int64; lines::InputArray = (CxxMat()), srn::Float64 = Float64(0), stn::Float64 = Float64(0), min_theta::Float64 = Float64(0), max_theta::Float64 = Float64(pi), use_edgeval::Bool = (false)) = HoughLines(image, rho, theta, threshold, lines, srn, stn, min_theta, max_theta, use_edgeval)

function HoughLinesP(image::InputArray, rho::Float64, theta::Float64, threshold::Int64, lines::InputArray, minLineLength::Float64, maxLineGap::Float64)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesP(julia_to_cpp(image),julia_to_cpp(rho),julia_to_cpp(theta),julia_to_cpp(threshold),julia_to_cpp(lines),julia_to_cpp(minLineLength),julia_to_cpp(maxLineGap)))
end
HoughLinesP(image::InputArray, rho::Float64, theta::Float64, threshold::Int64; lines::InputArray = (CxxMat()), minLineLength::Float64 = Float64(0), maxLineGap::Float64 = Float64(0)) = HoughLinesP(image, rho, theta, threshold, lines, minLineLength, maxLineGap)

function HoughLinesPointSet(point::InputArray, lines_max::Int64, threshold::Int64, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64, lines::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_HoughLinesPointSet(julia_to_cpp(point),julia_to_cpp(lines_max),julia_to_cpp(threshold),julia_to_cpp(min_rho),julia_to_cpp(max_rho),julia_to_cpp(rho_step),julia_to_cpp(min_theta),julia_to_cpp(max_theta),julia_to_cpp(theta_step),julia_to_cpp(lines)))
end
HoughLinesPointSet(point::InputArray, lines_max::Int64, threshold::Int64, min_rho::Float64, max_rho::Float64, rho_step::Float64, min_theta::Float64, max_theta::Float64, theta_step::Float64; lines::InputArray = (CxxMat())) = HoughLinesPointSet(point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, lines)

function HoughCircles(image::InputArray, method::Int64, dp::Float64, minDist::Float64, circles::InputArray, param1::Float64, param2::Float64, minRadius::Int64, maxRadius::Int64)
	return cpp_to_julia(jlopencv_cv_cv_HoughCircles(julia_to_cpp(image),julia_to_cpp(method),julia_to_cpp(dp),julia_to_cpp(minDist),julia_to_cpp(circles),julia_to_cpp(param1),julia_to_cpp(param2),julia_to_cpp(minRadius),julia_to_cpp(maxRadius)))
end
HoughCircles(image::InputArray, method::Int64, dp::Float64, minDist::Float64; circles::InputArray = (CxxMat()), param1::Float64 = Float64(100), param2::Float64 = Float64(100), minRadius::Int64 = Int64(0), maxRadius::Int64 = Int64(0)) = HoughCircles(image, method, dp, minDist, circles, param1, param2, minRadius, maxRadius)

function erode(src::InputArray, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int64, borderType::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_erode(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
erode(src::InputArray, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int64 = Int64(1), borderType::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = erode(src, kernel, dst, anchor, iterations, borderType, borderValue)

function dilate(src::InputArray, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int64, borderType::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_dilate(julia_to_cpp(src),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
dilate(src::InputArray, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int64 = Int64(1), borderType::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = dilate(src, kernel, dst, anchor, iterations, borderType, borderValue)

function morphologyEx(src::InputArray, op::Int64, kernel::InputArray, dst::InputArray, anchor::Point{Int32}, iterations::Int64, borderType::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_morphologyEx(julia_to_cpp(src),julia_to_cpp(op),julia_to_cpp(kernel),julia_to_cpp(dst),julia_to_cpp(anchor),julia_to_cpp(iterations),julia_to_cpp(borderType),julia_to_cpp(borderValue)))
end
morphologyEx(src::InputArray, op::Int64, kernel::InputArray; dst::InputArray = (CxxMat()), anchor::Point{Int32} = (cpp_to_julia(PointOTXSTXP())), iterations::Int64 = Int64(1), borderType::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(morphologyDefaultBorderValueOP()))) = morphologyEx(src, op, kernel, dst, anchor, iterations, borderType, borderValue)

function resize(src::InputArray, dsize::Size{Int32}, dst::InputArray, fx::Float64, fy::Float64, interpolation::Int64)
	return cpp_to_julia(jlopencv_cv_cv_resize(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(fx),julia_to_cpp(fy),julia_to_cpp(interpolation)))
end
resize(src::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), fx::Float64 = Float64(0), fy::Float64 = Float64(0), interpolation::Int64 = Int64(cv_INTER_LINEAR)) = resize(src, dsize, dst, fx, fy, interpolation)

function warpAffine(src::InputArray, M::InputArray, dsize::Size{Int32}, dst::InputArray, flags::Int64, borderMode::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpAffine(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpAffine(src::InputArray, M::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_INTER_LINEAR), borderMode::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP()))) = warpAffine(src, M, dsize, dst, flags, borderMode, borderValue)

function warpPerspective(src::InputArray, M::InputArray, dsize::Size{Int32}, dst::InputArray, flags::Int64, borderMode::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_warpPerspective(julia_to_cpp(src),julia_to_cpp(M),julia_to_cpp(dsize),julia_to_cpp(dst),julia_to_cpp(flags),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
warpPerspective(src::InputArray, M::InputArray, dsize::Size{Int32}; dst::InputArray = (CxxMat()), flags::Int64 = Int64(cv_INTER_LINEAR), borderMode::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP()))) = warpPerspective(src, M, dsize, dst, flags, borderMode, borderValue)

function remap(src::InputArray, map1::InputArray, map2::InputArray, interpolation::Int64, dst::InputArray, borderMode::Int64, borderValue::Scalar)
	return cpp_to_julia(jlopencv_cv_cv_remap(julia_to_cpp(src),julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(interpolation),julia_to_cpp(dst),julia_to_cpp(borderMode),julia_to_cpp(borderValue)))
end
remap(src::InputArray, map1::InputArray, map2::InputArray, interpolation::Int64; dst::InputArray = (CxxMat()), borderMode::Int64 = Int64(cv_BORDER_CONSTANT), borderValue::Scalar = (cpp_to_julia(ScalarOP()))) = remap(src, map1, map2, interpolation, dst, borderMode, borderValue)

function convertMaps(map1::InputArray, map2::InputArray, dstmap1type::Int64, dstmap1::InputArray, dstmap2::InputArray, nninterpolation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convertMaps(julia_to_cpp(map1),julia_to_cpp(map2),julia_to_cpp(dstmap1type),julia_to_cpp(dstmap1),julia_to_cpp(dstmap2),julia_to_cpp(nninterpolation)))
end
convertMaps(map1::InputArray, map2::InputArray, dstmap1type::Int64; dstmap1::InputArray = (CxxMat()), dstmap2::InputArray = (CxxMat()), nninterpolation::Bool = (false)) = convertMaps(map1, map2, dstmap1type, dstmap1, dstmap2, nninterpolation)

function getRotationMatrix2D(center::Point{Float32}, angle::Float64, scale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_getRotationMatrix2D(julia_to_cpp(center),julia_to_cpp(angle),julia_to_cpp(scale)))
end

function invertAffineTransform(M::InputArray, iM::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_invertAffineTransform(julia_to_cpp(M),julia_to_cpp(iM)))
end
invertAffineTransform(M::InputArray; iM::InputArray = (CxxMat())) = invertAffineTransform(M, iM)

function getPerspectiveTransform(src::InputArray, dst::InputArray, solveMethod::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getPerspectiveTransform(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(solveMethod)))
end
getPerspectiveTransform(src::InputArray, dst::InputArray; solveMethod::Int64 = Int64(cv_DECOMP_LU)) = getPerspectiveTransform(src, dst, solveMethod)

function getAffineTransform(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_getAffineTransform(julia_to_cpp(src),julia_to_cpp(dst)))
end

function getRectSubPix(image::InputArray, patchSize::Size{Int32}, center::Point{Float32}, patch::InputArray, patchType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getRectSubPix(julia_to_cpp(image),julia_to_cpp(patchSize),julia_to_cpp(center),julia_to_cpp(patch),julia_to_cpp(patchType)))
end
getRectSubPix(image::InputArray, patchSize::Size{Int32}, center::Point{Float32}; patch::InputArray = (CxxMat()), patchType::Int64 = Int64(-1)) = getRectSubPix(image, patchSize, center, patch, patchType)

function logPolar(src::InputArray, center::Point{Float32}, M::Float64, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_logPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(M),julia_to_cpp(flags),julia_to_cpp(dst)))
end
logPolar(src::InputArray, center::Point{Float32}, M::Float64, flags::Int64; dst::InputArray = (CxxMat())) = logPolar(src, center, M, flags, dst)

function linearPolar(src::InputArray, center::Point{Float32}, maxRadius::Float64, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_linearPolar(julia_to_cpp(src),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
linearPolar(src::InputArray, center::Point{Float32}, maxRadius::Float64, flags::Int64; dst::InputArray = (CxxMat())) = linearPolar(src, center, maxRadius, flags, dst)

function warpPolar(src::InputArray, dsize::Size{Int32}, center::Point{Float32}, maxRadius::Float64, flags::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_warpPolar(julia_to_cpp(src),julia_to_cpp(dsize),julia_to_cpp(center),julia_to_cpp(maxRadius),julia_to_cpp(flags),julia_to_cpp(dst)))
end
warpPolar(src::InputArray, dsize::Size{Int32}, center::Point{Float32}, maxRadius::Float64, flags::Int64; dst::InputArray = (CxxMat())) = warpPolar(src, dsize, center, maxRadius, flags, dst)

function integral3(src::InputArray, sum::InputArray, sqsum::InputArray, tilted::InputArray, sdepth::Int64, sqdepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(tilted),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral3(src::InputArray; sum::InputArray = (CxxMat()), sqsum::InputArray = (CxxMat()), tilted::InputArray = (CxxMat()), sdepth::Int64 = Int64(-1), sqdepth::Int64 = Int64(-1)) = integral3(src, sum, sqsum, tilted, sdepth, sqdepth)

function integral(src::InputArray, sum::InputArray, sdepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sdepth)))
end
integral(src::InputArray; sum::InputArray = (CxxMat()), sdepth::Int64 = Int64(-1)) = integral(src, sum, sdepth)

function integral2(src::InputArray, sum::InputArray, sqsum::InputArray, sdepth::Int64, sqdepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_integral(julia_to_cpp(src),julia_to_cpp(sum),julia_to_cpp(sqsum),julia_to_cpp(sdepth),julia_to_cpp(sqdepth)))
end
integral2(src::InputArray; sum::InputArray = (CxxMat()), sqsum::InputArray = (CxxMat()), sdepth::Int64 = Int64(-1), sqdepth::Int64 = Int64(-1)) = integral2(src, sum, sqsum, sdepth, sqdepth)

function accumulate(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulate(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulate(src::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulate(src, dst, mask)

function accumulateSquare(src::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateSquare(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateSquare(src::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulateSquare(src, dst, mask)

function accumulateProduct(src1::InputArray, src2::InputArray, dst::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateProduct(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(dst),julia_to_cpp(mask)))
end
accumulateProduct(src1::InputArray, src2::InputArray, dst::InputArray; mask::InputArray = (CxxMat())) = accumulateProduct(src1, src2, dst, mask)

function accumulateWeighted(src::InputArray, dst::InputArray, alpha::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_accumulateWeighted(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(alpha),julia_to_cpp(mask)))
end
accumulateWeighted(src::InputArray, dst::InputArray, alpha::Float64; mask::InputArray = (CxxMat())) = accumulateWeighted(src, dst, alpha, mask)

function phaseCorrelate(src1::InputArray, src2::InputArray, window::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_phaseCorrelate(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(window)))
end
phaseCorrelate(src1::InputArray, src2::InputArray; window::InputArray = (CxxMat())) = phaseCorrelate(src1, src2, window)

function createHanningWindow(winSize::Size{Int32}, type::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_createHanningWindow(julia_to_cpp(winSize),julia_to_cpp(type),julia_to_cpp(dst)))
end
createHanningWindow(winSize::Size{Int32}, type::Int64; dst::InputArray = (CxxMat())) = createHanningWindow(winSize, type, dst)

function threshold(src::InputArray, thresh::Float64, maxval::Float64, type::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_threshold(julia_to_cpp(src),julia_to_cpp(thresh),julia_to_cpp(maxval),julia_to_cpp(type),julia_to_cpp(dst)))
end
threshold(src::InputArray, thresh::Float64, maxval::Float64, type::Int64; dst::InputArray = (CxxMat())) = threshold(src, thresh, maxval, type, dst)

function adaptiveThreshold(src::InputArray, maxValue::Float64, adaptiveMethod::Int64, thresholdType::Int64, blockSize::Int64, C::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_adaptiveThreshold(julia_to_cpp(src),julia_to_cpp(maxValue),julia_to_cpp(adaptiveMethod),julia_to_cpp(thresholdType),julia_to_cpp(blockSize),julia_to_cpp(C),julia_to_cpp(dst)))
end
adaptiveThreshold(src::InputArray, maxValue::Float64, adaptiveMethod::Int64, thresholdType::Int64, blockSize::Int64, C::Float64; dst::InputArray = (CxxMat())) = adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)

function pyrDown(src::InputArray, dst::InputArray, dstsize::Size{Int32}, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_pyrDown(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrDown(src::InputArray; dst::InputArray = (CxxMat()), dstsize::Size{Int32} = (cpp_to_julia(SizeOP())), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = pyrDown(src, dst, dstsize, borderType)

function pyrUp(src::InputArray, dst::InputArray, dstsize::Size{Int32}, borderType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_pyrUp(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(dstsize),julia_to_cpp(borderType)))
end
pyrUp(src::InputArray; dst::InputArray = (CxxMat()), dstsize::Size{Int32} = (cpp_to_julia(SizeOP())), borderType::Int64 = Int64(cv_BORDER_DEFAULT)) = pyrUp(src, dst, dstsize, borderType)

function calcHist(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, mask::InputArray, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}, hist::InputArray, accumulate::Bool)
	return cpp_to_julia(jlopencv_cv_cv_calcHist(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(mask),julia_to_cpp(histSize),julia_to_cpp(ranges),julia_to_cpp(hist),julia_to_cpp(accumulate)))
end
calcHist(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, mask::InputArray, histSize::Array{Int32, 1}, ranges::Array{Float32, 1}; hist::InputArray = (CxxMat()), accumulate::Bool = (false)) = calcHist(images, channels, mask, histSize, ranges, hist, accumulate)

function calcBackProject(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, hist::InputArray, ranges::Array{Float32, 1}, scale::Float64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_calcBackProject(julia_to_cpp(images),julia_to_cpp(channels),julia_to_cpp(hist),julia_to_cpp(ranges),julia_to_cpp(scale),julia_to_cpp(dst)))
end
calcBackProject(images::AbstractVector{<:InputArray}, channels::Array{Int32, 1}, hist::InputArray, ranges::Array{Float32, 1}, scale::Float64; dst::InputArray = (CxxMat())) = calcBackProject(images, channels, hist, ranges, scale, dst)

function compareHist(H1::InputArray, H2::InputArray, method::Int64)
	return cpp_to_julia(jlopencv_cv_cv_compareHist(julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(method)))
end

function equalizeHist(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_equalizeHist(julia_to_cpp(src),julia_to_cpp(dst)))
end
equalizeHist(src::InputArray; dst::InputArray = (CxxMat())) = equalizeHist(src, dst)

function createCLAHE(clipLimit::Float64, tileGridSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_createCLAHE(julia_to_cpp(clipLimit),julia_to_cpp(tileGridSize)))
end
createCLAHE(; clipLimit::Float64 = Float64(40.0), tileGridSize::Size{Int32} = (cpp_to_julia(SizeOeSGeP()))) = createCLAHE(clipLimit, tileGridSize)

function EMD(signature1::InputArray, signature2::InputArray, distType::Int64, cost::InputArray, lowerBound::Ptr{Float32}, flow::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_wrapperEMD(julia_to_cpp(signature1),julia_to_cpp(signature2),julia_to_cpp(distType),julia_to_cpp(cost),julia_to_cpp(lowerBound),julia_to_cpp(flow)))
end
EMD(signature1::InputArray, signature2::InputArray, distType::Int64; cost::InputArray = (CxxMat()), lowerBound::Ptr{Float32} = (cpp_to_julia(PtrifloatkOP())), flow::InputArray = (CxxMat())) = EMD(signature1, signature2, distType, cost, lowerBound, flow)

function watershed(image::InputArray, markers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_watershed(julia_to_cpp(image),julia_to_cpp(markers)))
end

function pyrMeanShiftFiltering(src::InputArray, sp::Float64, sr::Float64, dst::InputArray, maxLevel::Int64, termcrit::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_pyrMeanShiftFiltering(julia_to_cpp(src),julia_to_cpp(sp),julia_to_cpp(sr),julia_to_cpp(dst),julia_to_cpp(maxLevel),julia_to_cpp(termcrit)))
end
pyrMeanShiftFiltering(src::InputArray, sp::Float64, sr::Float64; dst::InputArray = (CxxMat()), maxLevel::Int64 = Int64(1), termcrit::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggMAXRITERRTermCriteriaggEPSSbSXP()))) = pyrMeanShiftFiltering(src, sp, sr, dst, maxLevel, termcrit)

function grabCut(img::InputArray, mask::InputArray, rect::Rect{Int32}, bgdModel::InputArray, fgdModel::InputArray, iterCount::Int64, mode::Int64)
	return cpp_to_julia(jlopencv_cv_cv_grabCut(julia_to_cpp(img),julia_to_cpp(mask),julia_to_cpp(rect),julia_to_cpp(bgdModel),julia_to_cpp(fgdModel),julia_to_cpp(iterCount),julia_to_cpp(mode)))
end
grabCut(img::InputArray, mask::InputArray, rect::Rect{Int32}, bgdModel::InputArray, fgdModel::InputArray, iterCount::Int64; mode::Int64 = Int64(cv_GC_EVAL)) = grabCut(img, mask, rect, bgdModel, fgdModel, iterCount, mode)

function distanceTransformWithLabels(src::InputArray, distanceType::Int64, maskSize::Int64, dst::InputArray, labels::InputArray, labelType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(labels),julia_to_cpp(labelType)))
end
distanceTransformWithLabels(src::InputArray, distanceType::Int64, maskSize::Int64; dst::InputArray = (CxxMat()), labels::InputArray = (CxxMat()), labelType::Int64 = Int64(cv_DIST_LABEL_CCOMP)) = distanceTransformWithLabels(src, distanceType, maskSize, dst, labels, labelType)

function distanceTransform(src::InputArray, distanceType::Int64, maskSize::Int64, dst::InputArray, dstType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_distanceTransform(julia_to_cpp(src),julia_to_cpp(distanceType),julia_to_cpp(maskSize),julia_to_cpp(dst),julia_to_cpp(dstType)))
end
distanceTransform(src::InputArray, distanceType::Int64, maskSize::Int64; dst::InputArray = (CxxMat()), dstType::Int64 = Int64(CV_32F)) = distanceTransform(src, distanceType, maskSize, dst, dstType)

function floodFill(image::InputArray, mask::InputArray, seedPoint::Point{Int32}, newVal::Scalar, loDiff::Scalar, upDiff::Scalar, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_floodFill(julia_to_cpp(image),julia_to_cpp(mask),julia_to_cpp(seedPoint),julia_to_cpp(newVal),julia_to_cpp(loDiff),julia_to_cpp(upDiff),julia_to_cpp(flags)))
end
floodFill(image::InputArray, mask::InputArray, seedPoint::Point{Int32}, newVal::Scalar; loDiff::Scalar = (cpp_to_julia(ScalarOP())), upDiff::Scalar = (cpp_to_julia(ScalarOP())), flags::Int64 = Int64(4)) = floodFill(image, mask, seedPoint, newVal, loDiff, upDiff, flags)

function cvtColor(src::InputArray, code::Int64, dst::InputArray, dstCn::Int64, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_cvtColor(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn),julia_to_cpp(hint)))
end
cvtColor(src::InputArray, code::Int64; dst::InputArray = (CxxMat()), dstCn::Int64 = Int64(0), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = cvtColor(src, code, dst, dstCn, hint)

function cvtColorTwoPlane(src1::InputArray, src2::InputArray, code::Int64, dst::InputArray, hint::AlgorithmHint)
	return cpp_to_julia(jlopencv_cv_cv_cvtColorTwoPlane(julia_to_cpp(src1),julia_to_cpp(src2),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(hint)))
end
cvtColorTwoPlane(src1::InputArray, src2::InputArray, code::Int64; dst::InputArray = (CxxMat()), hint::AlgorithmHint = (cv_ALGO_HINT_DEFAULT)) = cvtColorTwoPlane(src1, src2, code, dst, hint)

function demosaicing(src::InputArray, code::Int64, dst::InputArray, dstCn::Int64)
	return cpp_to_julia(jlopencv_cv_cv_demosaicing(julia_to_cpp(src),julia_to_cpp(code),julia_to_cpp(dst),julia_to_cpp(dstCn)))
end
demosaicing(src::InputArray, code::Int64; dst::InputArray = (CxxMat()), dstCn::Int64 = Int64(0)) = demosaicing(src, code, dst, dstCn)

function moments(array::InputArray, binaryImage::Bool)
	return cpp_to_julia(jlopencv_cv_cv_moments(julia_to_cpp(array),julia_to_cpp(binaryImage)))
end
moments(array::InputArray; binaryImage::Bool = (false)) = moments(array, binaryImage)

function HuMoments(m::Moments, hu::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_HuMoments(julia_to_cpp(m),julia_to_cpp(hu)))
end
HuMoments(m::Moments; hu::InputArray = (CxxMat())) = HuMoments(m, hu)

function matchTemplate(image::InputArray, templ::InputArray, method::Int64, result::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_matchTemplate(julia_to_cpp(image),julia_to_cpp(templ),julia_to_cpp(method),julia_to_cpp(result),julia_to_cpp(mask)))
end
matchTemplate(image::InputArray, templ::InputArray, method::Int64; result::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = matchTemplate(image, templ, method, result, mask)

function connectedComponentsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64, labels::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels)))
end
connectedComponentsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64; labels::InputArray = (CxxMat())) = connectedComponentsWithAlgorithm(image, connectivity, ltype, ccltype, labels)

function connectedComponents(image::InputArray, labels::InputArray, connectivity::Int64, ltype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponents(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponents(image::InputArray; labels::InputArray = (CxxMat()), connectivity::Int64 = Int64(8), ltype::Int64 = Int64(CV_32S)) = connectedComponents(image, labels, connectivity, ltype)

function connectedComponentsWithStatsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64, labels::InputArray, stats::InputArray, centroids::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(connectivity),julia_to_cpp(ltype),julia_to_cpp(ccltype),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids)))
end
connectedComponentsWithStatsWithAlgorithm(image::InputArray, connectivity::Int64, ltype::Int64, ccltype::Int64; labels::InputArray = (CxxMat()), stats::InputArray = (CxxMat()), centroids::InputArray = (CxxMat())) = connectedComponentsWithStatsWithAlgorithm(image, connectivity, ltype, ccltype, labels, stats, centroids)

function connectedComponentsWithStats(image::InputArray, labels::InputArray, stats::InputArray, centroids::InputArray, connectivity::Int64, ltype::Int64)
	return cpp_to_julia(jlopencv_cv_cv_connectedComponentsWithStats(julia_to_cpp(image),julia_to_cpp(labels),julia_to_cpp(stats),julia_to_cpp(centroids),julia_to_cpp(connectivity),julia_to_cpp(ltype)))
end
connectedComponentsWithStats(image::InputArray; labels::InputArray = (CxxMat()), stats::InputArray = (CxxMat()), centroids::InputArray = (CxxMat()), connectivity::Int64 = Int64(8), ltype::Int64 = Int64(CV_32S)) = connectedComponentsWithStats(image, labels, stats, centroids, connectivity, ltype)

function findContours(image::InputArray, mode::Int64, method::Int64, contours::AbstractVector{<:InputArray}, hierarchy::InputArray, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_findContours(julia_to_cpp(image),julia_to_cpp(mode),julia_to_cpp(method),julia_to_cpp(contours),julia_to_cpp(hierarchy),julia_to_cpp(offset)))
end
findContours(image::InputArray, mode::Int64, method::Int64; contours::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), hierarchy::InputArray = (CxxMat()), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = findContours(image, mode, method, contours, hierarchy, offset)

function approxPolyDP(curve::InputArray, epsilon::Float64, closed::Bool, approxCurve::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_approxPolyDP(julia_to_cpp(curve),julia_to_cpp(epsilon),julia_to_cpp(closed),julia_to_cpp(approxCurve)))
end
approxPolyDP(curve::InputArray, epsilon::Float64, closed::Bool; approxCurve::InputArray = (CxxMat())) = approxPolyDP(curve, epsilon, closed, approxCurve)

function arcLength(curve::InputArray, closed::Bool)
	return cpp_to_julia(jlopencv_cv_cv_arcLength(julia_to_cpp(curve),julia_to_cpp(closed)))
end

function boundingRect(array::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_boundingRect(julia_to_cpp(array)))
end

function contourArea(contour::InputArray, oriented::Bool)
	return cpp_to_julia(jlopencv_cv_cv_contourArea(julia_to_cpp(contour),julia_to_cpp(oriented)))
end
contourArea(contour::InputArray; oriented::Bool = (false)) = contourArea(contour, oriented)

function minAreaRect(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minAreaRect(julia_to_cpp(points)))
end

function boxPoints(box::RotatedRect, points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_boxPoints(julia_to_cpp(box),julia_to_cpp(points)))
end
boxPoints(box::RotatedRect; points::InputArray = (CxxMat())) = boxPoints(box, points)

function minEnclosingCircle(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingCircle(julia_to_cpp(points)))
end

function minEnclosingTriangle(points::InputArray, triangle::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_minEnclosingTriangle(julia_to_cpp(points),julia_to_cpp(triangle)))
end
minEnclosingTriangle(points::InputArray; triangle::InputArray = (CxxMat())) = minEnclosingTriangle(points, triangle)

function matchShapes(contour1::InputArray, contour2::InputArray, method::Int64, parameter::Float64)
	return cpp_to_julia(jlopencv_cv_cv_matchShapes(julia_to_cpp(contour1),julia_to_cpp(contour2),julia_to_cpp(method),julia_to_cpp(parameter)))
end

function convexHull(points::InputArray, hull::InputArray, clockwise::Bool, returnPoints::Bool)
	return cpp_to_julia(jlopencv_cv_cv_convexHull(julia_to_cpp(points),julia_to_cpp(hull),julia_to_cpp(clockwise),julia_to_cpp(returnPoints)))
end
convexHull(points::InputArray; hull::InputArray = (CxxMat()), clockwise::Bool = (false), returnPoints::Bool = (true)) = convexHull(points, hull, clockwise, returnPoints)

function convexityDefects(contour::InputArray, convexhull::InputArray, convexityDefects::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_convexityDefects(julia_to_cpp(contour),julia_to_cpp(convexhull),julia_to_cpp(convexityDefects)))
end
convexityDefects(contour::InputArray, convexhull::InputArray; convexityDefects::InputArray = (CxxMat())) = convexityDefects(contour, convexhull, convexityDefects)

function isContourConvex(contour::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_isContourConvex(julia_to_cpp(contour)))
end

function intersectConvexConvex(p1::InputArray, p2::InputArray, p12::InputArray, handleNested::Bool)
	return cpp_to_julia(jlopencv_cv_cv_intersectConvexConvex(julia_to_cpp(p1),julia_to_cpp(p2),julia_to_cpp(p12),julia_to_cpp(handleNested)))
end
intersectConvexConvex(p1::InputArray, p2::InputArray; p12::InputArray = (CxxMat()), handleNested::Bool = (true)) = intersectConvexConvex(p1, p2, p12, handleNested)

function fitEllipse(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipse(julia_to_cpp(points)))
end

function fitEllipseAMS(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseAMS(julia_to_cpp(points)))
end

function fitEllipseDirect(points::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitEllipseDirect(julia_to_cpp(points)))
end

function fitLine(points::InputArray, distType::Int64, param::Float64, reps::Float64, aeps::Float64, line::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_fitLine(julia_to_cpp(points),julia_to_cpp(distType),julia_to_cpp(param),julia_to_cpp(reps),julia_to_cpp(aeps),julia_to_cpp(line)))
end
fitLine(points::InputArray, distType::Int64, param::Float64, reps::Float64, aeps::Float64; line::InputArray = (CxxMat())) = fitLine(points, distType, param, reps, aeps, line)

function pointPolygonTest(contour::InputArray, pt::Point{Float32}, measureDist::Bool)
	return cpp_to_julia(jlopencv_cv_cv_pointPolygonTest(julia_to_cpp(contour),julia_to_cpp(pt),julia_to_cpp(measureDist)))
end

function rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect, intersectingRegion::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_rotatedRectangleIntersection(julia_to_cpp(rect1),julia_to_cpp(rect2),julia_to_cpp(intersectingRegion)))
end
rotatedRectangleIntersection(rect1::RotatedRect, rect2::RotatedRect; intersectingRegion::InputArray = (CxxMat())) = rotatedRectangleIntersection(rect1, rect2, intersectingRegion)

function createGeneralizedHoughBallard()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughBallard())
end

function createGeneralizedHoughGuil()
	return cpp_to_julia(jlopencv_cv_cv_createGeneralizedHoughGuil())
end

function applyColorMap(src::InputArray, colormap::Int64, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(colormap),julia_to_cpp(dst)))
end
applyColorMap(src::InputArray, colormap::Int64; dst::InputArray = (CxxMat())) = applyColorMap(src, colormap, dst)

function applyColorMap(src::InputArray, userColor::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_applyColorMap(julia_to_cpp(src),julia_to_cpp(userColor),julia_to_cpp(dst)))
end
applyColorMap(src::InputArray, userColor::InputArray; dst::InputArray = (CxxMat())) = applyColorMap(src, userColor, dst)

function line(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_line(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
line(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = line(img, pt1, pt2, color, thickness, lineType, shift)

function arrowedLine(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int64, line_type::Int64, shift::Int64, tipLength::Float64)
	return cpp_to_julia(jlopencv_cv_cv_arrowedLine(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(line_type),julia_to_cpp(shift),julia_to_cpp(tipLength)))
end
arrowedLine(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int64 = Int64(1), line_type::Int64 = Int64(8), shift::Int64 = Int64(0), tipLength::Float64 = Float64(0.1)) = arrowedLine(img, pt1, pt2, color, thickness, line_type, shift, tipLength)

function rectangle(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::InputArray, pt1::Point{Int32}, pt2::Point{Int32}, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = rectangle(img, pt1, pt2, color, thickness, lineType, shift)

function rectangle(img::InputArray, rec::Rect{Int32}, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_rectangle(julia_to_cpp(img),julia_to_cpp(rec),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
rectangle(img::InputArray, rec::Rect{Int32}, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = rectangle(img, rec, color, thickness, lineType, shift)

function circle(img::InputArray, center::Point{Int32}, radius::Int64, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_circle(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(radius),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
circle(img::InputArray, center::Point{Int32}, radius::Int64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = circle(img, center, radius, color, thickness, lineType, shift)

function ellipse(img::InputArray, center::Point{Int32}, axes::Size{Int32}, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(startAngle),julia_to_cpp(endAngle),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
ellipse(img::InputArray, center::Point{Int32}, axes::Size{Int32}, angle::Float64, startAngle::Float64, endAngle::Float64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = ellipse(img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)

function ellipse(img::InputArray, box::RotatedRect, color::Scalar, thickness::Int64, lineType::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ellipse(julia_to_cpp(img),julia_to_cpp(box),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType)))
end
ellipse(img::InputArray, box::RotatedRect, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8)) = ellipse(img, box, color, thickness, lineType)

function drawMarker(img::InputArray, position::Point{Int32}, color::Scalar, markerType::Int64, markerSize::Int64, thickness::Int64, line_type::Int64)
	return cpp_to_julia(jlopencv_cv_cv_drawMarker(julia_to_cpp(img),julia_to_cpp(position),julia_to_cpp(color),julia_to_cpp(markerType),julia_to_cpp(markerSize),julia_to_cpp(thickness),julia_to_cpp(line_type)))
end
drawMarker(img::InputArray, position::Point{Int32}, color::Scalar; markerType::Int64 = Int64(cv_MARKER_CROSS), markerSize::Int64 = Int64(20), thickness::Int64 = Int64(1), line_type::Int64 = Int64(8)) = drawMarker(img, position, color, markerType, markerSize, thickness, line_type)

function fillConvexPoly(img::InputArray, points::InputArray, color::Scalar, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_fillConvexPoly(julia_to_cpp(img),julia_to_cpp(points),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
fillConvexPoly(img::InputArray, points::InputArray, color::Scalar; lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = fillConvexPoly(img, points, color, lineType, shift)

function fillPoly(img::InputArray, pts::AbstractVector{<:InputArray}, color::Scalar, lineType::Int64, shift::Int64, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_fillPoly(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(color),julia_to_cpp(lineType),julia_to_cpp(shift),julia_to_cpp(offset)))
end
fillPoly(img::InputArray, pts::AbstractVector{<:InputArray}, color::Scalar; lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = fillPoly(img, pts, color, lineType, shift, offset)

function polylines(img::InputArray, pts::AbstractVector{<:InputArray}, isClosed::Bool, color::Scalar, thickness::Int64, lineType::Int64, shift::Int64)
	return cpp_to_julia(jlopencv_cv_cv_polylines(julia_to_cpp(img),julia_to_cpp(pts),julia_to_cpp(isClosed),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(shift)))
end
polylines(img::InputArray, pts::AbstractVector{<:InputArray}, isClosed::Bool, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), shift::Int64 = Int64(0)) = polylines(img, pts, isClosed, color, thickness, lineType, shift)

function drawContours(image::InputArray, contours::AbstractVector{<:InputArray}, contourIdx::Int64, color::Scalar, thickness::Int64, lineType::Int64, hierarchy::InputArray, maxLevel::Int64, offset::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_drawContours(julia_to_cpp(image),julia_to_cpp(contours),julia_to_cpp(contourIdx),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(hierarchy),julia_to_cpp(maxLevel),julia_to_cpp(offset)))
end
drawContours(image::InputArray, contours::AbstractVector{<:InputArray}, contourIdx::Int64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), hierarchy::InputArray = (CxxMat()), maxLevel::Int64 = Int64(typemax(Int32)), offset::Point{Int32} = (cpp_to_julia(PointOP()))) = drawContours(image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)

function clipLine(imgRect::Rect{Int32}, pt1::Point{Int32}, pt2::Point{Int32})
	return cpp_to_julia(jlopencv_cv_cv_clipLine(julia_to_cpp(imgRect),julia_to_cpp(pt1),julia_to_cpp(pt2)))
end

function ellipse2Poly(center::Point{Int32}, axes::Size{Int32}, angle::Int64, arcStart::Int64, arcEnd::Int64, delta::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ellipse2Poly(julia_to_cpp(center),julia_to_cpp(axes),julia_to_cpp(angle),julia_to_cpp(arcStart),julia_to_cpp(arcEnd),julia_to_cpp(delta)))
end

function putText(img::InputArray, text::String, org::Point{Int32}, fontFace::Int64, fontScale::Float64, color::Scalar, thickness::Int64, lineType::Int64, bottomLeftOrigin::Bool)
	return cpp_to_julia(jlopencv_cv_cv_putText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(color),julia_to_cpp(thickness),julia_to_cpp(lineType),julia_to_cpp(bottomLeftOrigin)))
end
putText(img::InputArray, text::String, org::Point{Int32}, fontFace::Int64, fontScale::Float64, color::Scalar; thickness::Int64 = Int64(1), lineType::Int64 = Int64(cv_LINE_8), bottomLeftOrigin::Bool = (false)) = putText(img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)

function getTextSize(text::String, fontFace::Int64, fontScale::Float64, thickness::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getTextSize(julia_to_cpp(text),julia_to_cpp(fontFace),julia_to_cpp(fontScale),julia_to_cpp(thickness)))
end

function getFontScaleFromHeight(fontFace::Int64, pixelHeight::Int64, thickness::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getFontScaleFromHeight(julia_to_cpp(fontFace),julia_to_cpp(pixelHeight),julia_to_cpp(thickness)))
end
getFontScaleFromHeight(fontFace::Int64, pixelHeight::Int64; thickness::Int64 = Int64(1)) = getFontScaleFromHeight(fontFace, pixelHeight, thickness)

function AffineFeature_create(backend::Ptr{Feature2D}, maxTilt::Int64, minTilt::Int64, tiltStep::Float64, rotateStepBase::Float64)
	return cpp_to_julia(jlopencv_cv_cv_AffineFeature_create(julia_to_cpp(backend),julia_to_cpp(maxTilt),julia_to_cpp(minTilt),julia_to_cpp(tiltStep),julia_to_cpp(rotateStepBase)))
end
AffineFeature_create(backend::Ptr{Feature2D}; maxTilt::Int64 = Int64(), minTilt::Int64 = Int64(0), tiltStep::Float64 = Float64(), rotateStepBase::Float64 = Float64()) = AffineFeature_create(backend, maxTilt, minTilt, tiltStep, rotateStepBase)

function SIFT_create(nfeatures::Int64, nOctaveLayers::Int64, contrastThreshold::Float64, edgeThreshold::Float64, sigma::Float64, enable_precise_upscale::Bool)
	return cpp_to_julia(jlopencv_cv_cv_SIFT_create(julia_to_cpp(nfeatures),julia_to_cpp(nOctaveLayers),julia_to_cpp(contrastThreshold),julia_to_cpp(edgeThreshold),julia_to_cpp(sigma),julia_to_cpp(enable_precise_upscale)))
end
SIFT_create(; nfeatures::Int64 = Int64(0), nOctaveLayers::Int64 = Int64(3), contrastThreshold::Float64 = Float64(0.04), edgeThreshold::Float64 = Float64(), sigma::Float64 = Float64(), enable_precise_upscale::Bool = (false)) = SIFT_create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, enable_precise_upscale)

function SIFT_create(nfeatures::Int64, nOctaveLayers::Int64, contrastThreshold::Float64, edgeThreshold::Float64, sigma::Float64, descriptorType::Int64, enable_precise_upscale::Bool)
	return cpp_to_julia(jlopencv_cv_cv_SIFT_create(julia_to_cpp(nfeatures),julia_to_cpp(nOctaveLayers),julia_to_cpp(contrastThreshold),julia_to_cpp(edgeThreshold),julia_to_cpp(sigma),julia_to_cpp(descriptorType),julia_to_cpp(enable_precise_upscale)))
end
SIFT_create(nfeatures::Int64, nOctaveLayers::Int64, contrastThreshold::Float64, edgeThreshold::Float64, sigma::Float64, descriptorType::Int64; enable_precise_upscale::Bool = (false)) = SIFT_create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, descriptorType, enable_precise_upscale)

function BRISK_create(thresh::Int64, octaves::Int64, patternScale::Float64)
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(patternScale)))
end
BRISK_create(; thresh::Int64 = Int64(), octaves::Int64 = Int64(3), patternScale::Float64 = Float64()) = BRISK_create(thresh, octaves, patternScale)

function BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float64, dMin::Float64, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float64 = Float64(), dMin::Float64 = Float64(), indexChange::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = BRISK_create(radiusList, numberList, dMax, dMin, indexChange)

function BRISK_create(thresh::Int64, octaves::Int64, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}, dMax::Float64, dMin::Float64, indexChange::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_BRISK_create(julia_to_cpp(thresh),julia_to_cpp(octaves),julia_to_cpp(radiusList),julia_to_cpp(numberList),julia_to_cpp(dMax),julia_to_cpp(dMin),julia_to_cpp(indexChange)))
end
BRISK_create(thresh::Int64, octaves::Int64, radiusList::Array{Float32, 1}, numberList::Array{Int32, 1}; dMax::Float64 = Float64(), dMin::Float64 = Float64(), indexChange::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = BRISK_create(thresh, octaves, radiusList, numberList, dMax, dMin, indexChange)

function ORB_create(nfeatures::Int64, scaleFactor::Float64, nlevels::Int64, edgeThreshold::Int64, firstLevel::Int64, WTA_K::Int64, scoreType::ORB_ScoreType, patchSize::Int64, fastThreshold::Int64)
	return cpp_to_julia(jlopencv_cv_cv_ORB_create(julia_to_cpp(nfeatures),julia_to_cpp(scaleFactor),julia_to_cpp(nlevels),julia_to_cpp(edgeThreshold),julia_to_cpp(firstLevel),julia_to_cpp(WTA_K),julia_to_cpp(scoreType),julia_to_cpp(patchSize),julia_to_cpp(fastThreshold)))
end
ORB_create(; nfeatures::Int64 = Int64(500), scaleFactor::Float64 = Float64(1.2), nlevels::Int64 = Int64(8), edgeThreshold::Int64 = Int64(31), firstLevel::Int64 = Int64(0), WTA_K::Int64 = Int64(2), scoreType::ORB_ScoreType = (ORB_HARRIS_SCORE), patchSize::Int64 = Int64(31), fastThreshold::Int64 = Int64(20)) = ORB_create(nfeatures, scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, scoreType, patchSize, fastThreshold)

function MSER_create(delta::Int64, min_area::Int64, max_area::Int64, max_variation::Float64, min_diversity::Float64, max_evolution::Int64, area_threshold::Float64, min_margin::Float64, edge_blur_size::Int64)
	return cpp_to_julia(jlopencv_cv_cv_MSER_create(julia_to_cpp(delta),julia_to_cpp(min_area),julia_to_cpp(max_area),julia_to_cpp(max_variation),julia_to_cpp(min_diversity),julia_to_cpp(max_evolution),julia_to_cpp(area_threshold),julia_to_cpp(min_margin),julia_to_cpp(edge_blur_size)))
end
MSER_create(; delta::Int64 = Int64(), min_area::Int64 = Int64(), max_area::Int64 = Int64(), max_variation::Float64 = Float64(), min_diversity::Float64 = Float64(), max_evolution::Int64 = Int64(), area_threshold::Float64 = Float64(), min_margin::Float64 = Float64(), edge_blur_size::Int64 = Int64()) = MSER_create(delta, min_area, max_area, max_variation, min_diversity, max_evolution, area_threshold, min_margin, edge_blur_size)

function FastFeatureDetector_create(threshold::Int64, nonmaxSuppression::Bool, type::FastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_FastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end

function AgastFeatureDetector_create(threshold::Int64, nonmaxSuppression::Bool, type::AgastFeatureDetector_DetectorType)
	return cpp_to_julia(jlopencv_cv_cv_AgastFeatureDetector_create(julia_to_cpp(threshold),julia_to_cpp(nonmaxSuppression),julia_to_cpp(type)))
end

function GFTTDetector_create(maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, blockSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(; maxCorners::Int64 = Int64(1000), qualityLevel::Float64 = Float64(), minDistance::Float64 = Float64(1), blockSize::Int64 = Int64(3), useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k)

function GFTTDetector_create(maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, blockSize::Int64, gradientSize::Int64, useHarrisDetector::Bool, k::Float64)
	return cpp_to_julia(jlopencv_cv_cv_GFTTDetector_create(julia_to_cpp(maxCorners),julia_to_cpp(qualityLevel),julia_to_cpp(minDistance),julia_to_cpp(blockSize),julia_to_cpp(gradientSize),julia_to_cpp(useHarrisDetector),julia_to_cpp(k)))
end
GFTTDetector_create(maxCorners::Int64, qualityLevel::Float64, minDistance::Float64, blockSize::Int64, gradientSize::Int64; useHarrisDetector::Bool = (false), k::Float64 = Float64(0.04)) = GFTTDetector_create(maxCorners, qualityLevel, minDistance, blockSize, gradientSize, useHarrisDetector, k)

function SimpleBlobDetector_create(parameters::SimpleBlobDetector_Params)
	return cpp_to_julia(jlopencv_cv_cv_SimpleBlobDetector_create(julia_to_cpp(parameters)))
end
SimpleBlobDetector_create(; parameters::SimpleBlobDetector_Params = (SimpleBlobDetector_Params())) = SimpleBlobDetector_create(parameters)

function KAZE_create(extended::Bool, upright::Bool, threshold::Float64, nOctaves::Int64, nOctaveLayers::Int64, diffusivity::KAZE_DiffusivityType)
	return cpp_to_julia(jlopencv_cv_cv_KAZE_create(julia_to_cpp(extended),julia_to_cpp(upright),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity)))
end

function AKAZE_create(descriptor_type::AKAZE_DescriptorType, descriptor_size::Int64, descriptor_channels::Int64, threshold::Float64, nOctaves::Int64, nOctaveLayers::Int64, diffusivity::KAZE_DiffusivityType, max_points::Int64)
	return cpp_to_julia(jlopencv_cv_cv_AKAZE_create(julia_to_cpp(descriptor_type),julia_to_cpp(descriptor_size),julia_to_cpp(descriptor_channels),julia_to_cpp(threshold),julia_to_cpp(nOctaves),julia_to_cpp(nOctaveLayers),julia_to_cpp(diffusivity),julia_to_cpp(max_points)))
end

function DescriptorMatcher_create(descriptorMatcherType::String)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(descriptorMatcherType)))
end

function DescriptorMatcher_create(matcherType::DescriptorMatcher_MatcherType)
	return cpp_to_julia(jlopencv_cv_cv_DescriptorMatcher_create(julia_to_cpp(matcherType)))
end

function BFMatcher_create(normType::Int64, crossCheck::Bool)
	return cpp_to_julia(jlopencv_cv_cv_BFMatcher_create(julia_to_cpp(normType),julia_to_cpp(crossCheck)))
end
BFMatcher_create(; normType::Int64 = Int64(cv_NORM_L2), crossCheck::Bool = (false)) = BFMatcher_create(normType, crossCheck)

function FlannBasedMatcher_create()
	return cpp_to_julia(jlopencv_cv_cv_FlannBasedMatcher_create())
end

function drawKeypoints(image::InputArray, keypoints::Array{KeyPoint, 1}, outImage::InputArray, color::Scalar, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawKeypoints(julia_to_cpp(image),julia_to_cpp(keypoints),julia_to_cpp(outImage),julia_to_cpp(color),julia_to_cpp(flags)))
end

function drawMatches(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::InputArray, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Int8, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end

function drawMatches(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{DMatch, 1}, outImg::InputArray, matchesThickness::Int64, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Int8, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchesThickness),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end

function drawMatchesKnn(img1::InputArray, keypoints1::Array{KeyPoint, 1}, img2::InputArray, keypoints2::Array{KeyPoint, 1}, matches1to2::Array{Array{DMatch, 1}, 1}, outImg::InputArray, matchColor::Scalar, singlePointColor::Scalar, matchesMask::Array{Array{Int8, 1}, 1}, flags::DrawMatchesFlags)
	return cpp_to_julia(jlopencv_cv_cv_drawMatches(julia_to_cpp(img1),julia_to_cpp(keypoints1),julia_to_cpp(img2),julia_to_cpp(keypoints2),julia_to_cpp(matches1to2),julia_to_cpp(outImg),julia_to_cpp(matchColor),julia_to_cpp(singlePointColor),julia_to_cpp(matchesMask),julia_to_cpp(flags)))
end

function imread(filename::String, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imread(julia_to_cpp(filename),julia_to_cpp(flags)))
end
imread(filename::String; flags::Int64 = Int64(cv_IMREAD_COLOR_BGR)) = imread(filename, flags)

function imread(filename::String, dst::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imread(julia_to_cpp(filename),julia_to_cpp(dst),julia_to_cpp(flags)))
end

function imreadmulti(filename::String, mats::AbstractVector{<:InputArray}, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String; mats::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(cv_IMREAD_ANYCOLOR)) = imreadmulti(filename, mats, flags)

function imreadmulti(filename::String, start::Int64, count::Int64, mats::AbstractVector{<:InputArray}, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imreadmulti(julia_to_cpp(filename),julia_to_cpp(start),julia_to_cpp(count),julia_to_cpp(mats),julia_to_cpp(flags)))
end
imreadmulti(filename::String, start::Int64, count::Int64; mats::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(cv_IMREAD_ANYCOLOR)) = imreadmulti(filename, start, count, mats, flags)

function imwrite(filename::String, img::InputArray, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imwrite(julia_to_cpp(filename),julia_to_cpp(img),julia_to_cpp(params)))
end
imwrite(filename::String, img::InputArray; params::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = imwrite(filename, img, params)

function imdecode(buf::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_imdecode(julia_to_cpp(buf),julia_to_cpp(flags)))
end

function imencode(ext::String, img::InputArray, params::Array{Int32, 1})
	return cpp_to_julia(jlopencv_cv_cv_imencode(julia_to_cpp(ext),julia_to_cpp(img),julia_to_cpp(params)))
end
imencode(ext::String, img::InputArray; params::Array{Int32, 1} = (cpp_to_julia(stdggvectoriintkOP()))) = imencode(ext, img, params)

function haveImageReader(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageReader(julia_to_cpp(filename)))
end

function haveImageWriter(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_haveImageWriter(julia_to_cpp(filename)))
end

function VideoWriter_fourcc(c1::Char, c2::Char, c3::Char, c4::Char)
	return cpp_to_julia(jlopencv_cv_cv_VideoWriter_fourcc(julia_to_cpp(c1),julia_to_cpp(c2),julia_to_cpp(c3),julia_to_cpp(c4)))
end

function Rodrigues(src::InputArray, dst::InputArray, jacobian::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_Rodrigues(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(jacobian)))
end
Rodrigues(src::InputArray; dst::InputArray = (CxxMat()), jacobian::InputArray = (CxxMat())) = Rodrigues(src, dst, jacobian)

function findHomography(srcPoints::InputArray, dstPoints::InputArray, method::Int64, ransacReprojThreshold::Float64, mask::InputArray, maxIters::Int64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(mask),julia_to_cpp(maxIters),julia_to_cpp(confidence)))
end
findHomography(srcPoints::InputArray, dstPoints::InputArray; method::Int64 = Int64(0), ransacReprojThreshold::Float64 = Float64(3), mask::InputArray = (CxxMat()), maxIters::Int64 = Int64(2000), confidence::Float64 = Float64(0.995)) = findHomography(srcPoints, dstPoints, method, ransacReprojThreshold, mask, maxIters, confidence)

function findHomography(srcPoints::InputArray, dstPoints::InputArray, params::UsacParams, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findHomography(julia_to_cpp(srcPoints),julia_to_cpp(dstPoints),julia_to_cpp(params),julia_to_cpp(mask)))
end
findHomography(srcPoints::InputArray, dstPoints::InputArray, params::UsacParams; mask::InputArray = (CxxMat())) = findHomography(srcPoints, dstPoints, params, mask)

function RQDecomp3x3(src::InputArray, mtxR::InputArray, mtxQ::InputArray, Qx::InputArray, Qy::InputArray, Qz::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_RQDecomp3x3(julia_to_cpp(src),julia_to_cpp(mtxR),julia_to_cpp(mtxQ),julia_to_cpp(Qx),julia_to_cpp(Qy),julia_to_cpp(Qz)))
end
RQDecomp3x3(src::InputArray; mtxR::InputArray = (CxxMat()), mtxQ::InputArray = (CxxMat()), Qx::InputArray = (CxxMat()), Qy::InputArray = (CxxMat()), Qz::InputArray = (CxxMat())) = RQDecomp3x3(src, mtxR, mtxQ, Qx, Qy, Qz)

function decomposeProjectionMatrix(projMatrix::InputArray, cameraMatrix::InputArray, rotMatrix::InputArray, transVect::InputArray, rotMatrixX::InputArray, rotMatrixY::InputArray, rotMatrixZ::InputArray, eulerAngles::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_decomposeProjectionMatrix(julia_to_cpp(projMatrix),julia_to_cpp(cameraMatrix),julia_to_cpp(rotMatrix),julia_to_cpp(transVect),julia_to_cpp(rotMatrixX),julia_to_cpp(rotMatrixY),julia_to_cpp(rotMatrixZ),julia_to_cpp(eulerAngles)))
end
decomposeProjectionMatrix(projMatrix::InputArray; cameraMatrix::InputArray = (CxxMat()), rotMatrix::InputArray = (CxxMat()), transVect::InputArray = (CxxMat()), rotMatrixX::InputArray = (CxxMat()), rotMatrixY::InputArray = (CxxMat()), rotMatrixZ::InputArray = (CxxMat()), eulerAngles::InputArray = (CxxMat())) = decomposeProjectionMatrix(projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)

function matMulDeriv(A::InputArray, B::InputArray, dABdA::InputArray, dABdB::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_matMulDeriv(julia_to_cpp(A),julia_to_cpp(B),julia_to_cpp(dABdA),julia_to_cpp(dABdB)))
end
matMulDeriv(A::InputArray, B::InputArray; dABdA::InputArray = (CxxMat()), dABdB::InputArray = (CxxMat())) = matMulDeriv(A, B, dABdA, dABdB)

function composeRT(rvec1::InputArray, tvec1::InputArray, rvec2::InputArray, tvec2::InputArray, rvec3::InputArray, tvec3::InputArray, dr3dr1::InputArray, dr3dt1::InputArray, dr3dr2::InputArray, dr3dt2::InputArray, dt3dr1::InputArray, dt3dt1::InputArray, dt3dr2::InputArray, dt3dt2::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_composeRT(julia_to_cpp(rvec1),julia_to_cpp(tvec1),julia_to_cpp(rvec2),julia_to_cpp(tvec2),julia_to_cpp(rvec3),julia_to_cpp(tvec3),julia_to_cpp(dr3dr1),julia_to_cpp(dr3dt1),julia_to_cpp(dr3dr2),julia_to_cpp(dr3dt2),julia_to_cpp(dt3dr1),julia_to_cpp(dt3dt1),julia_to_cpp(dt3dr2),julia_to_cpp(dt3dt2)))
end
composeRT(rvec1::InputArray, tvec1::InputArray, rvec2::InputArray, tvec2::InputArray; rvec3::InputArray = (CxxMat()), tvec3::InputArray = (CxxMat()), dr3dr1::InputArray = (CxxMat()), dr3dt1::InputArray = (CxxMat()), dr3dr2::InputArray = (CxxMat()), dr3dt2::InputArray = (CxxMat()), dt3dr1::InputArray = (CxxMat()), dt3dt1::InputArray = (CxxMat()), dt3dr2::InputArray = (CxxMat()), dt3dt2::InputArray = (CxxMat())) = composeRT(rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)

function projectPoints(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, imagePoints::InputArray, jacobian::InputArray, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_projectPoints(julia_to_cpp(objectPoints),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imagePoints),julia_to_cpp(jacobian),julia_to_cpp(aspectRatio)))
end
projectPoints(objectPoints::InputArray, rvec::InputArray, tvec::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; imagePoints::InputArray = (CxxMat()), jacobian::InputArray = (CxxMat()), aspectRatio::Float64 = Float64(0)) = projectPoints(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, imagePoints, jacobian, aspectRatio)

function solvePnP(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, useExtrinsicGuess::Bool, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnP(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags)))
end
solvePnP(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; rvec::InputArray = (CxxMat()), tvec::InputArray = (CxxMat()), useExtrinsicGuess::Bool = (false), flags::Int64 = Int64(cv_SOLVEPNP_ITERATIVE)) = solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, flags)

function solvePnPRansac(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, useExtrinsicGuess::Bool, iterationsCount::Int64, reprojectionError::Float64, confidence::Float64, inliers::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(iterationsCount),julia_to_cpp(reprojectionError),julia_to_cpp(confidence),julia_to_cpp(inliers),julia_to_cpp(flags)))
end
solvePnPRansac(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; rvec::InputArray = (CxxMat()), tvec::InputArray = (CxxMat()), useExtrinsicGuess::Bool = (false), iterationsCount::Int64 = Int64(100), reprojectionError::Float64 = Float64(8.0), confidence::Float64 = Float64(0.99), inliers::InputArray = (CxxMat()), flags::Int64 = Int64(cv_SOLVEPNP_ITERATIVE)) = solvePnPRansac(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, inliers, flags)

function solvePnPRansac(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, inliers::InputArray, params::UsacParams)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRansac(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(inliers),julia_to_cpp(params)))
end

function solveP3P(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, flags::Int64, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_solveP3P(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(flags),julia_to_cpp(rvecs),julia_to_cpp(tvecs)))
end
solveP3P(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, flags::Int64; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs, tvecs)

function solvePnPRefineLM(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineLM(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria)))
end
solvePnPRefineLM(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray; criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP()))) = solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)

function solvePnPRefineVVS(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, criteria::TermCriteria, VVSlambda::Float64)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPRefineVVS(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(criteria),julia_to_cpp(VVSlambda)))
end
solvePnPRefineVVS(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray; criteria::TermCriteria = (cpp_to_julia(TermCriteriaOTermCriteriaggEPSGRGTermCriteriaggCOUNTSGYWSGFLTREPSILONP())), VVSlambda::Float64 = Float64(1)) = solvePnPRefineVVS(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)

function solvePnPGeneric(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, useExtrinsicGuess::Bool, flags::SolvePnPMethod, rvec::InputArray, tvec::InputArray, reprojectionError::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_solvePnPGeneric(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(useExtrinsicGuess),julia_to_cpp(flags),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(reprojectionError)))
end
solvePnPGeneric(objectPoints::InputArray, imagePoints::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), useExtrinsicGuess::Bool = (false), flags::SolvePnPMethod = (cv_SOLVEPNP_ITERATIVE), rvec::InputArray = (CxxMat()), tvec::InputArray = (CxxMat()), reprojectionError::InputArray = (CxxMat())) = solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvecs, tvecs, useExtrinsicGuess, flags, rvec, tvec, reprojectionError)

function initCameraMatrix2D(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, aspectRatio::Float64)
	return cpp_to_julia(jlopencv_cv_cv_initCameraMatrix2D(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(aspectRatio)))
end
initCameraMatrix2D(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}; aspectRatio::Float64 = Float64(1.0)) = initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio)

function findChessboardCorners(image::InputArray, patternSize::Size{Int32}, corners::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCorners(image::InputArray, patternSize::Size{Int32}; corners::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_CB_ADAPTIVE_THRESH + cv_CALIB_CB_NORMALIZE_IMAGE)) = findChessboardCorners(image, patternSize, corners, flags)

function checkChessboard(img::InputArray, size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_checkChessboard(julia_to_cpp(img),julia_to_cpp(size)))
end

function findChessboardCornersSBWithMeta(image::InputArray, patternSize::Size{Int32}, flags::Int64, corners::InputArray, meta::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(corners),julia_to_cpp(meta)))
end
findChessboardCornersSBWithMeta(image::InputArray, patternSize::Size{Int32}, flags::Int64; corners::InputArray = (CxxMat()), meta::InputArray = (CxxMat())) = findChessboardCornersSBWithMeta(image, patternSize, flags, corners, meta)

function findChessboardCornersSB(image::InputArray, patternSize::Size{Int32}, corners::InputArray, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_findChessboardCornersSB(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(flags)))
end
findChessboardCornersSB(image::InputArray, patternSize::Size{Int32}; corners::InputArray = (CxxMat()), flags::Int64 = Int64(0)) = findChessboardCornersSB(image, patternSize, corners, flags)

function estimateChessboardSharpness(image::InputArray, patternSize::Size{Int32}, corners::InputArray, rise_distance::Float64, vertical::Bool, sharpness::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_estimateChessboardSharpness(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(rise_distance),julia_to_cpp(vertical),julia_to_cpp(sharpness)))
end
estimateChessboardSharpness(image::InputArray, patternSize::Size{Int32}, corners::InputArray; rise_distance::Float64 = Float64(0.8), vertical::Bool = (false), sharpness::InputArray = (CxxMat())) = estimateChessboardSharpness(image, patternSize, corners, rise_distance, vertical, sharpness)

function find4QuadCornerSubpix(img::InputArray, corners::InputArray, region_size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_find4QuadCornerSubpix(julia_to_cpp(img),julia_to_cpp(corners),julia_to_cpp(region_size)))
end

function drawChessboardCorners(image::InputArray, patternSize::Size{Int32}, corners::InputArray, patternWasFound::Bool)
	return cpp_to_julia(jlopencv_cv_cv_drawChessboardCorners(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(corners),julia_to_cpp(patternWasFound)))
end

function drawFrameAxes(image::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, length::Float64, thickness::Int64)
	return cpp_to_julia(jlopencv_cv_cv_drawFrameAxes(julia_to_cpp(image),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvec),julia_to_cpp(tvec),julia_to_cpp(length),julia_to_cpp(thickness)))
end
drawFrameAxes(image::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, rvec::InputArray, tvec::InputArray, length::Float64; thickness::Int64 = Int64(3)) = drawFrameAxes(image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)

function findCirclesGrid(image::InputArray, patternSize::Size{Int32}, flags::Int64, blobDetector::Ptr{Feature2D}, parameters::CirclesGridFinderParameters, centers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(flags),julia_to_cpp(blobDetector),julia_to_cpp(parameters),julia_to_cpp(centers)))
end
findCirclesGrid(image::InputArray, patternSize::Size{Int32}, flags::Int64, blobDetector::Ptr{Feature2D}, parameters::CirclesGridFinderParameters; centers::InputArray = (CxxMat())) = findCirclesGrid(image, patternSize, flags, blobDetector, parameters, centers)

function findCirclesGrid(image::InputArray, patternSize::Size{Int32}, centers::InputArray, flags::Int64, blobDetector::Ptr{Feature2D})
	return cpp_to_julia(jlopencv_cv_cv_findCirclesGrid(julia_to_cpp(image),julia_to_cpp(patternSize),julia_to_cpp(centers),julia_to_cpp(flags),julia_to_cpp(blobDetector)))
end
findCirclesGrid(image::InputArray, patternSize::Size{Int32}; centers::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_CB_SYMMETRIC_GRID), blobDetector::Ptr{Feature2D} = (SimpleBlobDetectorggcreateOP)) = findCirclesGrid(image, patternSize, centers, flags, blobDetector)

function calibrateCameraExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, stdDeviationsIntrinsics::InputArray, stdDeviationsExtrinsics::InputArray, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), stdDeviationsIntrinsics::InputArray = (CxxMat()), stdDeviationsExtrinsics::InputArray = (CxxMat()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraExtended(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, stdDeviationsIntrinsics, stdDeviationsExtrinsics, perViewErrors, flags, criteria)

function calibrateCamera(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCamera(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCamera(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), flags::Int64 = Int64(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCamera(objectPoints, imagePoints, imageSize, cameraMatrix, distCoeffs, rvecs, tvecs, flags, criteria)

function calibrateCameraROExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, newObjPoints::InputArray, stdDeviationsIntrinsics::InputArray, stdDeviationsExtrinsics::InputArray, stdDeviationsObjPoints::InputArray, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(stdDeviationsIntrinsics),julia_to_cpp(stdDeviationsExtrinsics),julia_to_cpp(stdDeviationsObjPoints),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraROExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), newObjPoints::InputArray = (CxxMat()), stdDeviationsIntrinsics::InputArray = (CxxMat()), stdDeviationsExtrinsics::InputArray = (CxxMat()), stdDeviationsObjPoints::InputArray = (CxxMat()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraROExtended(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, stdDeviationsIntrinsics, stdDeviationsExtrinsics, stdDeviationsObjPoints, perViewErrors, flags, criteria)

function calibrateCameraRO(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, newObjPoints::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_calibrateCameraRO(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints),julia_to_cpp(imageSize),julia_to_cpp(iFixedPoint),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(newObjPoints),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
calibrateCameraRO(objectPoints::AbstractVector{<:InputArray}, imagePoints::AbstractVector{<:InputArray}, imageSize::Size{Int32}, iFixedPoint::Int64, cameraMatrix::InputArray, distCoeffs::InputArray; rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), newObjPoints::InputArray = (CxxMat()), flags::Int64 = Int64(0), criteria::TermCriteria = (TermCriteriaOGTermCriteriaggCOUNTGRGTermCriteriaggEPSSGZWSGDBLREPSILONP)) = calibrateCameraRO(objectPoints, imagePoints, imageSize, iFixedPoint, cameraMatrix, distCoeffs, rvecs, tvecs, newObjPoints, flags, criteria)

function calibrationMatrixValues(cameraMatrix::InputArray, imageSize::Size{Int32}, apertureWidth::Float64, apertureHeight::Float64)
	return cpp_to_julia(jlopencv_cv_cv_calibrationMatrixValues(julia_to_cpp(cameraMatrix),julia_to_cpp(imageSize),julia_to_cpp(apertureWidth),julia_to_cpp(apertureHeight)))
end

function stereoCalibrateExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, E::InputArray, F::InputArray, rvecs::AbstractVector{<:InputArray}, tvecs::AbstractVector{<:InputArray}, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(rvecs),julia_to_cpp(tvecs),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrateExtended(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray; E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), rvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), tvecs::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrateExtended(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, rvecs, tvecs, perViewErrors, flags, criteria)

function stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, E::InputArray, F::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}; R::InputArray = (CxxMat()), T::InputArray = (CxxMat()), E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, flags, criteria)

function stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, E::InputArray, F::InputArray, perViewErrors::InputArray, flags::Int64, criteria::TermCriteria)
	return cpp_to_julia(jlopencv_cv_cv_stereoCalibrate(julia_to_cpp(objectPoints),julia_to_cpp(imagePoints1),julia_to_cpp(imagePoints2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(E),julia_to_cpp(F),julia_to_cpp(perViewErrors),julia_to_cpp(flags),julia_to_cpp(criteria)))
end
stereoCalibrate(objectPoints::AbstractVector{<:InputArray}, imagePoints1::AbstractVector{<:InputArray}, imagePoints2::AbstractVector{<:InputArray}, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray; E::InputArray = (CxxMat()), F::InputArray = (CxxMat()), perViewErrors::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_FIX_INTRINSIC), criteria::TermCriteria = (TermCriteriaOTermCriteriaggCOUNTRTermCriteriaggEPSSGZWSGXeTcP)) = stereoCalibrate(objectPoints, imagePoints1, imagePoints2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, E, F, perViewErrors, flags, criteria)

function stereoRectify(cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray, R1::InputArray, R2::InputArray, P1::InputArray, P2::InputArray, Q::InputArray, flags::Int64, alpha::Float64, newImageSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_stereoRectify(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(imageSize),julia_to_cpp(R),julia_to_cpp(T),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(Q),julia_to_cpp(flags),julia_to_cpp(alpha),julia_to_cpp(newImageSize)))
end
stereoRectify(cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, imageSize::Size{Int32}, R::InputArray, T::InputArray; R1::InputArray = (CxxMat()), R2::InputArray = (CxxMat()), P1::InputArray = (CxxMat()), P2::InputArray = (CxxMat()), Q::InputArray = (CxxMat()), flags::Int64 = Int64(cv_CALIB_ZERO_DISPARITY), alpha::Float64 = Float64(-1), newImageSize::Size{Int32} = (cpp_to_julia(SizeOP()))) = stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, R1, R2, P1, P2, Q, flags, alpha, newImageSize)

function stereoRectifyUncalibrated(points1::InputArray, points2::InputArray, F::InputArray, imgSize::Size{Int32}, H1::InputArray, H2::InputArray, threshold::Float64)
	return cpp_to_julia(jlopencv_cv_cv_stereoRectifyUncalibrated(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(F),julia_to_cpp(imgSize),julia_to_cpp(H1),julia_to_cpp(H2),julia_to_cpp(threshold)))
end
stereoRectifyUncalibrated(points1::InputArray, points2::InputArray, F::InputArray, imgSize::Size{Int32}; H1::InputArray = (CxxMat()), H2::InputArray = (CxxMat()), threshold::Float64 = Float64(5)) = stereoRectifyUncalibrated(points1, points2, F, imgSize, H1, H2, threshold)

function rectify3Collinear(cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, cameraMatrix3::InputArray, distCoeffs3::InputArray, imgpt1::AbstractVector{<:InputArray}, imgpt3::AbstractVector{<:InputArray}, imageSize::Size{Int32}, R12::InputArray, T12::InputArray, R13::InputArray, T13::InputArray, alpha::Float64, newImgSize::Size{Int32}, flags::Int64, R1::InputArray, R2::InputArray, R3::InputArray, P1::InputArray, P2::InputArray, P3::InputArray, Q::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_rectify3Collinear(julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(cameraMatrix3),julia_to_cpp(distCoeffs3),julia_to_cpp(imgpt1),julia_to_cpp(imgpt3),julia_to_cpp(imageSize),julia_to_cpp(R12),julia_to_cpp(T12),julia_to_cpp(R13),julia_to_cpp(T13),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(flags),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(R3),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(P3),julia_to_cpp(Q)))
end
rectify3Collinear(cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, cameraMatrix3::InputArray, distCoeffs3::InputArray, imgpt1::AbstractVector{<:InputArray}, imgpt3::AbstractVector{<:InputArray}, imageSize::Size{Int32}, R12::InputArray, T12::InputArray, R13::InputArray, T13::InputArray, alpha::Float64, newImgSize::Size{Int32}, flags::Int64; R1::InputArray = (CxxMat()), R2::InputArray = (CxxMat()), R3::InputArray = (CxxMat()), P1::InputArray = (CxxMat()), P2::InputArray = (CxxMat()), P3::InputArray = (CxxMat()), Q::InputArray = (CxxMat())) = rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, R12, T12, R13, T13, alpha, newImgSize, flags, R1, R2, R3, P1, P2, P3, Q)

function getOptimalNewCameraMatrix(cameraMatrix::InputArray, distCoeffs::InputArray, imageSize::Size{Int32}, alpha::Float64, newImgSize::Size{Int32}, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getOptimalNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(imageSize),julia_to_cpp(alpha),julia_to_cpp(newImgSize),julia_to_cpp(centerPrincipalPoint)))
end
getOptimalNewCameraMatrix(cameraMatrix::InputArray, distCoeffs::InputArray, imageSize::Size{Int32}, alpha::Float64; newImgSize::Size{Int32} = (cpp_to_julia(SizeOP())), centerPrincipalPoint::Bool = (false)) = getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)

function calibrateHandEye(R_gripper2base::AbstractVector{<:InputArray}, t_gripper2base::AbstractVector{<:InputArray}, R_target2cam::AbstractVector{<:InputArray}, t_target2cam::AbstractVector{<:InputArray}, R_cam2gripper::InputArray, t_cam2gripper::InputArray, method::HandEyeCalibrationMethod)
	return cpp_to_julia(jlopencv_cv_cv_calibrateHandEye(julia_to_cpp(R_gripper2base),julia_to_cpp(t_gripper2base),julia_to_cpp(R_target2cam),julia_to_cpp(t_target2cam),julia_to_cpp(R_cam2gripper),julia_to_cpp(t_cam2gripper),julia_to_cpp(method)))
end
calibrateHandEye(R_gripper2base::AbstractVector{<:InputArray}, t_gripper2base::AbstractVector{<:InputArray}, R_target2cam::AbstractVector{<:InputArray}, t_target2cam::AbstractVector{<:InputArray}; R_cam2gripper::InputArray = (CxxMat()), t_cam2gripper::InputArray = (CxxMat()), method::HandEyeCalibrationMethod = (cv_CALIB_HAND_EYE_TSAI)) = calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam, t_target2cam, R_cam2gripper, t_cam2gripper, method)

function convertPointsToHomogeneous(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsToHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsToHomogeneous(src::InputArray; dst::InputArray = (CxxMat())) = convertPointsToHomogeneous(src, dst)

function convertPointsFromHomogeneous(src::InputArray, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_convertPointsFromHomogeneous(julia_to_cpp(src),julia_to_cpp(dst)))
end
convertPointsFromHomogeneous(src::InputArray; dst::InputArray = (CxxMat())) = convertPointsFromHomogeneous(src, dst)

function findFundamentalMat(points1::InputArray, points2::InputArray, method::Int64, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findFundamentalMat(points1::InputArray, points2::InputArray, method::Int64, ransacReprojThreshold::Float64, confidence::Float64, maxIters::Int64; mask::InputArray = (CxxMat())) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, maxIters, mask)

function findFundamentalMat(points1::InputArray, points2::InputArray, method::Int64, ransacReprojThreshold::Float64, confidence::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(confidence),julia_to_cpp(mask)))
end
findFundamentalMat(points1::InputArray, points2::InputArray; method::Int64 = Int64(cv_FM_RANSAC), ransacReprojThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99), mask::InputArray = (CxxMat())) = findFundamentalMat(points1, points2, method, ransacReprojThreshold, confidence, mask)

function findFundamentalMat(points1::InputArray, points2::InputArray, params::UsacParams, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findFundamentalMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(params),julia_to_cpp(mask)))
end
findFundamentalMat(points1::InputArray, points2::InputArray, params::UsacParams; mask::InputArray = (CxxMat())) = findFundamentalMat(points1, points2, params, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix::InputArray, method::Int64, prob::Float64, threshold::Float64, maxIters::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix::InputArray; method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), maxIters::Int64 = Int64(1000), mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, cameraMatrix, method, prob, threshold, maxIters, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, focal::Float64, pp::Point{Float64}, method::Int64, prob::Float64, threshold::Float64, maxIters::Int64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(maxIters),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray; focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), maxIters::Int64 = Int64(1000), mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, focal, pp, method, prob, threshold, maxIters, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, method::Int64, prob::Float64, threshold::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray; method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method, prob, threshold, mask)

function findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, cameraMatrix2::InputArray, dist_coeff1::InputArray, dist_coeff2::InputArray, params::UsacParams, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_findEssentialMat(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix1),julia_to_cpp(cameraMatrix2),julia_to_cpp(dist_coeff1),julia_to_cpp(dist_coeff2),julia_to_cpp(params),julia_to_cpp(mask)))
end
findEssentialMat(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, cameraMatrix2::InputArray, dist_coeff1::InputArray, dist_coeff2::InputArray, params::UsacParams; mask::InputArray = (CxxMat())) = findEssentialMat(points1, points2, cameraMatrix1, cameraMatrix2, dist_coeff1, dist_coeff2, params, mask)

function decomposeEssentialMat(E::InputArray, R1::InputArray, R2::InputArray, t::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_decomposeEssentialMat(julia_to_cpp(E),julia_to_cpp(R1),julia_to_cpp(R2),julia_to_cpp(t)))
end
decomposeEssentialMat(E::InputArray; R1::InputArray = (CxxMat()), R2::InputArray = (CxxMat()), t::InputArray = (CxxMat())) = decomposeEssentialMat(E, R1, R2, t)

function recoverPose(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray, E::InputArray, R::InputArray, t::InputArray, method::Int64, prob::Float64, threshold::Float64, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix1),julia_to_cpp(distCoeffs1),julia_to_cpp(cameraMatrix2),julia_to_cpp(distCoeffs2),julia_to_cpp(E),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(method),julia_to_cpp(prob),julia_to_cpp(threshold),julia_to_cpp(mask)))
end
recoverPose(points1::InputArray, points2::InputArray, cameraMatrix1::InputArray, distCoeffs1::InputArray, cameraMatrix2::InputArray, distCoeffs2::InputArray; E::InputArray = (CxxMat()), R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), method::Int64 = Int64(cv_RANSAC), prob::Float64 = Float64(0.999), threshold::Float64 = Float64(1.0), mask::InputArray = (CxxMat())) = recoverPose(points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, E, R, t, method, prob, threshold, mask)

function recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray, R::InputArray, t::InputArray, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask)))
end
recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray; R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), mask::InputArray = (CxxMat())) = recoverPose(E, points1, points2, cameraMatrix, R, t, mask)

function recoverPose(E::InputArray, points1::InputArray, points2::InputArray, R::InputArray, t::InputArray, focal::Float64, pp::Point{Float64}, mask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(focal),julia_to_cpp(pp),julia_to_cpp(mask)))
end
recoverPose(E::InputArray, points1::InputArray, points2::InputArray; R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), focal::Float64 = Float64(1.0), pp::Point{Float64} = (PointYdOWSGWP), mask::InputArray = (CxxMat())) = recoverPose(E, points1, points2, R, t, focal, pp, mask)

function recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray, distanceThresh::Float64, R::InputArray, t::InputArray, mask::InputArray, triangulatedPoints::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_recoverPose(julia_to_cpp(E),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(cameraMatrix),julia_to_cpp(distanceThresh),julia_to_cpp(R),julia_to_cpp(t),julia_to_cpp(mask),julia_to_cpp(triangulatedPoints)))
end
recoverPose(E::InputArray, points1::InputArray, points2::InputArray, cameraMatrix::InputArray, distanceThresh::Float64; R::InputArray = (CxxMat()), t::InputArray = (CxxMat()), mask::InputArray = (CxxMat()), triangulatedPoints::InputArray = (CxxMat())) = recoverPose(E, points1, points2, cameraMatrix, distanceThresh, R, t, mask, triangulatedPoints)

function computeCorrespondEpilines(points::InputArray, whichImage::Int64, F::InputArray, lines::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_computeCorrespondEpilines(julia_to_cpp(points),julia_to_cpp(whichImage),julia_to_cpp(F),julia_to_cpp(lines)))
end
computeCorrespondEpilines(points::InputArray, whichImage::Int64, F::InputArray; lines::InputArray = (CxxMat())) = computeCorrespondEpilines(points, whichImage, F, lines)

function triangulatePoints(projMatr1::InputArray, projMatr2::InputArray, projPoints1::InputArray, projPoints2::InputArray, points4D::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_triangulatePoints(julia_to_cpp(projMatr1),julia_to_cpp(projMatr2),julia_to_cpp(projPoints1),julia_to_cpp(projPoints2),julia_to_cpp(points4D)))
end
triangulatePoints(projMatr1::InputArray, projMatr2::InputArray, projPoints1::InputArray, projPoints2::InputArray; points4D::InputArray = (CxxMat())) = triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2, points4D)

function correctMatches(F::InputArray, points1::InputArray, points2::InputArray, newPoints1::InputArray, newPoints2::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_correctMatches(julia_to_cpp(F),julia_to_cpp(points1),julia_to_cpp(points2),julia_to_cpp(newPoints1),julia_to_cpp(newPoints2)))
end
correctMatches(F::InputArray, points1::InputArray, points2::InputArray; newPoints1::InputArray = (CxxMat()), newPoints2::InputArray = (CxxMat())) = correctMatches(F, points1, points2, newPoints1, newPoints2)

function filterSpeckles(img::InputArray, newVal::Float64, maxSpeckleSize::Int64, maxDiff::Float64, buf::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_filterSpeckles(julia_to_cpp(img),julia_to_cpp(newVal),julia_to_cpp(maxSpeckleSize),julia_to_cpp(maxDiff),julia_to_cpp(buf)))
end
filterSpeckles(img::InputArray, newVal::Float64, maxSpeckleSize::Int64, maxDiff::Float64; buf::InputArray = (CxxMat())) = filterSpeckles(img, newVal, maxSpeckleSize, maxDiff, buf)

function getValidDisparityROI(roi1::Rect{Int32}, roi2::Rect{Int32}, minDisparity::Int64, numberOfDisparities::Int64, blockSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getValidDisparityROI(julia_to_cpp(roi1),julia_to_cpp(roi2),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(blockSize)))
end

function validateDisparity(disparity::InputArray, cost::InputArray, minDisparity::Int64, numberOfDisparities::Int64, disp12MaxDisp::Int64)
	return cpp_to_julia(jlopencv_cv_cv_validateDisparity(julia_to_cpp(disparity),julia_to_cpp(cost),julia_to_cpp(minDisparity),julia_to_cpp(numberOfDisparities),julia_to_cpp(disp12MaxDisp)))
end
validateDisparity(disparity::InputArray, cost::InputArray, minDisparity::Int64, numberOfDisparities::Int64; disp12MaxDisp::Int64 = Int64(1)) = validateDisparity(disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)

function reprojectImageTo3D(disparity::InputArray, Q::InputArray, _3dImage::InputArray, handleMissingValues::Bool, ddepth::Int64)
	return cpp_to_julia(jlopencv_cv_cv_reprojectImageTo3D(julia_to_cpp(disparity),julia_to_cpp(Q),julia_to_cpp(_3dImage),julia_to_cpp(handleMissingValues),julia_to_cpp(ddepth)))
end
reprojectImageTo3D(disparity::InputArray, Q::InputArray; _3dImage::InputArray = (CxxMat()), handleMissingValues::Bool = (false), ddepth::Int64 = Int64(-1)) = reprojectImageTo3D(disparity, Q, _3dImage, handleMissingValues, ddepth)

function sampsonDistance(pt1::InputArray, pt2::InputArray, F::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_sampsonDistance(julia_to_cpp(pt1),julia_to_cpp(pt2),julia_to_cpp(F)))
end

function estimateAffine3D(src::InputArray, dst::InputArray, out::InputArray, inliers::InputArray, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateAffine3D(src::InputArray, dst::InputArray; out::InputArray = (CxxMat()), inliers::InputArray = (CxxMat()), ransacThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99)) = estimateAffine3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine3D(src::InputArray, dst::InputArray, force_rotation::Bool)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(force_rotation)))
end

function estimateTranslation3D(src::InputArray, dst::InputArray, out::InputArray, inliers::InputArray, ransacThreshold::Float64, confidence::Float64)
	return cpp_to_julia(jlopencv_cv_cv_estimateTranslation3D(julia_to_cpp(src),julia_to_cpp(dst),julia_to_cpp(out),julia_to_cpp(inliers),julia_to_cpp(ransacThreshold),julia_to_cpp(confidence)))
end
estimateTranslation3D(src::InputArray, dst::InputArray; out::InputArray = (CxxMat()), inliers::InputArray = (CxxMat()), ransacThreshold::Float64 = Float64(3), confidence::Float64 = Float64(0.99)) = estimateTranslation3D(src, dst, out, inliers, ransacThreshold, confidence)

function estimateAffine2D(from::InputArray, to::InputArray, inliers::InputArray, method::Int64, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffine2D(from::InputArray, to::InputArray; inliers::InputArray = (CxxMat()), method::Int64 = Int64(cv_RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffine2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function estimateAffine2D(pts1::InputArray, pts2::InputArray, params::UsacParams, inliers::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffine2D(julia_to_cpp(pts1),julia_to_cpp(pts2),julia_to_cpp(params),julia_to_cpp(inliers)))
end
estimateAffine2D(pts1::InputArray, pts2::InputArray, params::UsacParams; inliers::InputArray = (CxxMat())) = estimateAffine2D(pts1, pts2, params, inliers)

function estimateAffinePartial2D(from::InputArray, to::InputArray, inliers::InputArray, method::Int64, ransacReprojThreshold::Float64, maxIters::size_t, confidence::Float64, refineIters::size_t)
	return cpp_to_julia(jlopencv_cv_cv_estimateAffinePartial2D(julia_to_cpp(from),julia_to_cpp(to),julia_to_cpp(inliers),julia_to_cpp(method),julia_to_cpp(ransacReprojThreshold),julia_to_cpp(maxIters),julia_to_cpp(confidence),julia_to_cpp(refineIters)))
end
estimateAffinePartial2D(from::InputArray, to::InputArray; inliers::InputArray = (CxxMat()), method::Int64 = Int64(cv_RANSAC), ransacReprojThreshold::Float64 = Float64(3), maxIters::size_t = (2000), confidence::Float64 = Float64(0.99), refineIters::size_t = (10)) = estimateAffinePartial2D(from, to, inliers, method, ransacReprojThreshold, maxIters, confidence, refineIters)

function decomposeHomographyMat(H::InputArray, K::InputArray, rotations::AbstractVector{<:InputArray}, translations::AbstractVector{<:InputArray}, normals::AbstractVector{<:InputArray})
	return cpp_to_julia(jlopencv_cv_cv_decomposeHomographyMat(julia_to_cpp(H),julia_to_cpp(K),julia_to_cpp(rotations),julia_to_cpp(translations),julia_to_cpp(normals)))
end
decomposeHomographyMat(H::InputArray, K::InputArray; rotations::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), translations::AbstractVector{<:InputArray} = (Array{InputArray, 1}()), normals::AbstractVector{<:InputArray} = (Array{InputArray, 1}())) = decomposeHomographyMat(H, K, rotations, translations, normals)

function filterHomographyDecompByVisibleRefpoints(rotations::AbstractVector{<:InputArray}, normals::AbstractVector{<:InputArray}, beforePoints::InputArray, afterPoints::InputArray, possibleSolutions::InputArray, pointsMask::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_filterHomographyDecompByVisibleRefpoints(julia_to_cpp(rotations),julia_to_cpp(normals),julia_to_cpp(beforePoints),julia_to_cpp(afterPoints),julia_to_cpp(possibleSolutions),julia_to_cpp(pointsMask)))
end
filterHomographyDecompByVisibleRefpoints(rotations::AbstractVector{<:InputArray}, normals::AbstractVector{<:InputArray}, beforePoints::InputArray, afterPoints::InputArray; possibleSolutions::InputArray = (CxxMat()), pointsMask::InputArray = (CxxMat())) = filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints, afterPoints, possibleSolutions, pointsMask)

function StereoBM_create(numDisparities::Int64, blockSize::Int64)
	return cpp_to_julia(jlopencv_cv_cv_StereoBM_create(julia_to_cpp(numDisparities),julia_to_cpp(blockSize)))
end
StereoBM_create(; numDisparities::Int64 = Int64(0), blockSize::Int64 = Int64(21)) = StereoBM_create(numDisparities, blockSize)

function StereoSGBM_create(minDisparity::Int64, numDisparities::Int64, blockSize::Int64, P1::Int64, P2::Int64, disp12MaxDiff::Int64, preFilterCap::Int64, uniquenessRatio::Int64, speckleWindowSize::Int64, speckleRange::Int64, mode::Int64)
	return cpp_to_julia(jlopencv_cv_cv_StereoSGBM_create(julia_to_cpp(minDisparity),julia_to_cpp(numDisparities),julia_to_cpp(blockSize),julia_to_cpp(P1),julia_to_cpp(P2),julia_to_cpp(disp12MaxDiff),julia_to_cpp(preFilterCap),julia_to_cpp(uniquenessRatio),julia_to_cpp(speckleWindowSize),julia_to_cpp(speckleRange),julia_to_cpp(mode)))
end
StereoSGBM_create(; minDisparity::Int64 = Int64(0), numDisparities::Int64 = Int64(16), blockSize::Int64 = Int64(3), P1::Int64 = Int64(0), P2::Int64 = Int64(0), disp12MaxDiff::Int64 = Int64(0), preFilterCap::Int64 = Int64(0), uniquenessRatio::Int64 = Int64(0), speckleWindowSize::Int64 = Int64(0), speckleRange::Int64 = Int64(0), mode::Int64 = Int64(StereoSGBMggMODERSGBM)) = StereoSGBM_create(minDisparity, numDisparities, blockSize, P1, P2, disp12MaxDiff, preFilterCap, uniquenessRatio, speckleWindowSize, speckleRange, mode)

function undistort(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, dst::InputArray, newCameraMatrix::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_undistort(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(newCameraMatrix)))
end
undistort(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; dst::InputArray = (CxxMat()), newCameraMatrix::InputArray = (CxxMat())) = undistort(src, cameraMatrix, distCoeffs, dst, newCameraMatrix)

function initUndistortRectifyMap(cameraMatrix::InputArray, distCoeffs::InputArray, R::InputArray, newCameraMatrix::InputArray, size::Size{Int32}, m1type::Int64, map1::InputArray, map2::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_initUndistortRectifyMap(julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(newCameraMatrix),julia_to_cpp(size),julia_to_cpp(m1type),julia_to_cpp(map1),julia_to_cpp(map2)))
end
initUndistortRectifyMap(cameraMatrix::InputArray, distCoeffs::InputArray, R::InputArray, newCameraMatrix::InputArray, size::Size{Int32}, m1type::Int64; map1::InputArray = (CxxMat()), map2::InputArray = (CxxMat())) = initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)

function getDefaultNewCameraMatrix(cameraMatrix::InputArray, imgsize::Size{Int32}, centerPrincipalPoint::Bool)
	return cpp_to_julia(jlopencv_cv_cv_getDefaultNewCameraMatrix(julia_to_cpp(cameraMatrix),julia_to_cpp(imgsize),julia_to_cpp(centerPrincipalPoint)))
end
getDefaultNewCameraMatrix(cameraMatrix::InputArray; imgsize::Size{Int32} = (cpp_to_julia(SizeOP())), centerPrincipalPoint::Bool = (false)) = getDefaultNewCameraMatrix(cameraMatrix, imgsize, centerPrincipalPoint)

function undistortPoints(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, dst::InputArray, R::InputArray, P::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(dst),julia_to_cpp(R),julia_to_cpp(P)))
end
undistortPoints(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray; dst::InputArray = (CxxMat()), R::InputArray = (CxxMat()), P::InputArray = (CxxMat())) = undistortPoints(src, cameraMatrix, distCoeffs, dst, R, P)

function undistortPointsIter(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, R::InputArray, P::InputArray, criteria::TermCriteria, dst::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_undistortPoints(julia_to_cpp(src),julia_to_cpp(cameraMatrix),julia_to_cpp(distCoeffs),julia_to_cpp(R),julia_to_cpp(P),julia_to_cpp(criteria),julia_to_cpp(dst)))
end
undistortPointsIter(src::InputArray, cameraMatrix::InputArray, distCoeffs::InputArray, R::InputArray, P::InputArray, criteria::TermCriteria; dst::InputArray = (CxxMat())) = undistortPointsIter(src, cameraMatrix, distCoeffs, R, P, criteria, dst)

function namedWindow(winname::String, flags::Int64)
	return cpp_to_julia(jlopencv_cv_cv_namedWindow(julia_to_cpp(winname),julia_to_cpp(flags)))
end
namedWindow(winname::String; flags::Int64 = Int64(cv_WINDOW_AUTOSIZE)) = namedWindow(winname, flags)

function destroyWindow(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_destroyWindow(julia_to_cpp(winname)))
end

function destroyAllWindows()
	return cpp_to_julia(jlopencv_cv_cv_destroyAllWindows())
end

function startWindowThread()
	return cpp_to_julia(jlopencv_cv_cv_startWindowThread())
end

function waitKeyEx(delay::Int64)
	return cpp_to_julia(jlopencv_cv_cv_waitKeyEx(julia_to_cpp(delay)))
end
waitKeyEx(; delay::Int64 = Int64(0)) = waitKeyEx(delay)

function waitKey(delay::Int64)
	return cpp_to_julia(jlopencv_cv_cv_waitKey(julia_to_cpp(delay)))
end
waitKey(; delay::Int64 = Int64(0)) = waitKey(delay)

function imshow(winname::String, mat::InputArray)
	return cpp_to_julia(jlopencv_cv_cv_imshow(julia_to_cpp(winname),julia_to_cpp(mat)))
end

function resizeWindow(winname::String, width::Int64, height::Int64)
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(width),julia_to_cpp(height)))
end

function resizeWindow(winname::String, size::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_resizeWindow(julia_to_cpp(winname),julia_to_cpp(size)))
end

function moveWindow(winname::String, x::Int64, y::Int64)
	return cpp_to_julia(jlopencv_cv_cv_moveWindow(julia_to_cpp(winname),julia_to_cpp(x),julia_to_cpp(y)))
end

function setWindowProperty(winname::String, prop_id::Int64, prop_value::Float64)
	return cpp_to_julia(jlopencv_cv_cv_setWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id),julia_to_cpp(prop_value)))
end

function setWindowTitle(winname::String, title::String)
	return cpp_to_julia(jlopencv_cv_cv_setWindowTitle(julia_to_cpp(winname),julia_to_cpp(title)))
end

function getWindowProperty(winname::String, prop_id::Int64)
	return cpp_to_julia(jlopencv_cv_cv_getWindowProperty(julia_to_cpp(winname),julia_to_cpp(prop_id)))
end

function getWindowImageRect(winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getWindowImageRect(julia_to_cpp(winname)))
end

function selectROI(windowName::String, img::InputArray, showCrosshair::Bool, fromCenter::Bool, printNotice::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter),julia_to_cpp(printNotice)))
end
selectROI(windowName::String, img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false), printNotice::Bool = (true)) = selectROI(windowName, img, showCrosshair, fromCenter, printNotice)

function selectROI(img::InputArray, showCrosshair::Bool, fromCenter::Bool, printNotice::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROI(julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter),julia_to_cpp(printNotice)))
end
selectROI(img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false), printNotice::Bool = (true)) = selectROI(img, showCrosshair, fromCenter, printNotice)

function selectROIs(windowName::String, img::InputArray, showCrosshair::Bool, fromCenter::Bool, printNotice::Bool)
	return cpp_to_julia(jlopencv_cv_cv_selectROIs(julia_to_cpp(windowName),julia_to_cpp(img),julia_to_cpp(showCrosshair),julia_to_cpp(fromCenter),julia_to_cpp(printNotice)))
end
selectROIs(windowName::String, img::InputArray; showCrosshair::Bool = (true), fromCenter::Bool = (false), printNotice::Bool = (true)) = selectROIs(windowName, img, showCrosshair, fromCenter, printNotice)

function getTrackbarPos(trackbarname::String, winname::String)
	return cpp_to_julia(jlopencv_cv_cv_getTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname)))
end

function setTrackbarPos(trackbarname::String, winname::String, pos::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarPos(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(pos)))
end

function setTrackbarMax(trackbarname::String, winname::String, maxval::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMax(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(maxval)))
end

function setTrackbarMin(trackbarname::String, winname::String, minval::Int64)
	return cpp_to_julia(jlopencv_cv_cv_setTrackbarMin(julia_to_cpp(trackbarname),julia_to_cpp(winname),julia_to_cpp(minval)))
end

function addText(img::InputArray, text::String, org::Point{Int32}, nameFont::String, pointSize::Int64, color::Scalar, weight::Int64, style::Int64, spacing::Int64)
	return cpp_to_julia(jlopencv_cv_cv_addText(julia_to_cpp(img),julia_to_cpp(text),julia_to_cpp(org),julia_to_cpp(nameFont),julia_to_cpp(pointSize),julia_to_cpp(color),julia_to_cpp(weight),julia_to_cpp(style),julia_to_cpp(spacing)))
end
addText(img::InputArray, text::String, org::Point{Int32}, nameFont::String; pointSize::Int64 = Int64(-1), color::Scalar = (cpp_to_julia(ScalarggallOWP())), weight::Int64 = Int64(cv_QT_FONT_NORMAL), style::Int64 = Int64(cv_QT_STYLE_NORMAL), spacing::Int64 = Int64(0)) = addText(img, text, org, nameFont, pointSize, color, weight, style, spacing)

function displayOverlay(winname::String, text::String, delayms::Int64)
	return cpp_to_julia(jlopencv_cv_cv_displayOverlay(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayOverlay(winname::String, text::String; delayms::Int64 = Int64(0)) = displayOverlay(winname, text, delayms)

function displayStatusBar(winname::String, text::String, delayms::Int64)
	return cpp_to_julia(jlopencv_cv_cv_displayStatusBar(julia_to_cpp(winname),julia_to_cpp(text),julia_to_cpp(delayms)))
end
displayStatusBar(winname::String, text::String; delayms::Int64 = Int64(0)) = displayStatusBar(winname, text, delayms)

#
# Manual Wrapping BEGIN
#
# Hand-authored Julia wrappers for functions the header-driven generator cannot
# emit. This section is the Julia counterpart of the "Manual Wrapping" block in
# binding_templates_cpp/cv_core.cpp: the C++ side registers the compiled symbols
# these call, and this side provides the Julia-facing API. It is appended
# verbatim to the generated cv_cxx_wrap.jl by gen3_julia_cxx.py.
#
# Why these are manual:
#   * the GUI callbacks need their Julia closures GC-protected for the lifetime
#     of the C++ callback (CxxWrap.gcprotect), which the parser knows nothing of;
#   * CascadeClassifier::detectMultiScale returns its result through an output
#     `vector<Rect>` built inside the C++ lambda.

function createButton(bar_name::String, on_change, userdata, type::Int32 = 0, initial_button_state::Bool = false)
    func =  (x)->on_change(x, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(on_change)
    return jl_cpp_cv2.createButton(bar_name,func, type, initial_button_state)
end

function setMouseCallback(winname::String, onMouse, userdata)
    func =  (event, x, y, flags)->onMouse(event, x, y, flags, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(onMouse)
    return jl_cpp_cv2.setMouseCallback(winname,func)
end

function createTrackbar(trackbarname::String, winname::String, value::Ref{Int32}, count::Int32, onChange, userdata)
    func =  (x)->onChange(x, userdata)
    CxxWrap.gcprotect(userdata)
    CxxWrap.gcprotect(func)
    CxxWrap.gcprotect(onChange)
    return jl_cpp_cv2.createTrackbar(trackbarname, winname, value, count, func)
end

function CascadeClassifier(filename::String)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_CascadeClassifier(julia_to_cpp(filename)))
end


function detectMultiScale(cobj::CascadeClassifier, image::InputArray, scaleFactor::Float64, minNeighbors::Int32, flags::Int32, minSize::Size{Int32}, maxSize::Size{Int32})
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale(julia_to_cpp(cobj),julia_to_cpp(image),julia_to_cpp(scaleFactor),julia_to_cpp(minNeighbors),julia_to_cpp(flags),julia_to_cpp(minSize),julia_to_cpp(maxSize)))
end
detectMultiScale(cobj::CascadeClassifier, image::InputArray; scaleFactor::Float64 = Float64(1.1), minNeighbors::Int32 = Int32(3), flags::Int32 = Int32(0), minSize::Size{Int32} = (Size{Int32}(0,0)), maxSize::Size{Int32} = (Size{Int32}(0,0))) = detectMultiScale(cobj, image, scaleFactor, minNeighbors, flags, minSize, maxSize)

function empty(cobj::CascadeClassifier)
	return cpp_to_julia(jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_empty(julia_to_cpp(cobj)))
end

#
# Manual Wrapping END
#



include("cv_Error_cxx_wrap.jl")
include("cv_cuda_cxx_wrap.jl")
include("cv_cudev_cxx_wrap.jl")
include("cv_dnn_cxx_wrap.jl")
include("cv_fisheye_cxx_wrap.jl")
include("cv_internal_cxx_wrap.jl")
include("cv_ipp_cxx_wrap.jl")
include("cv_ogl_cxx_wrap.jl")
include("cv_samples_cxx_wrap.jl")
include("cv_traits_cxx_wrap.jl")
include("cv_utils_cxx_wrap.jl")