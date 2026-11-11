
function Base.getproperty(m::BarcodeDetector, s::Symbol)
    return Base.getfield(m, s)
end
function Base.setproperty!(m::BarcodeDetector, s::Symbol, v)
    return Base.setfield!(m, s, v)
end

function barcode_decodeWithType(cobj::BarcodeDetector, img::InputArray, points::InputArray)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_decodeWithType(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end

function barcode_detectAndDecodeWithType(cobj::BarcodeDetector, img::InputArray, points::InputArray)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_detectAndDecodeWithType(julia_to_cpp(cobj),julia_to_cpp(img),julia_to_cpp(points)))
end
barcode_detectAndDecodeWithType(cobj::BarcodeDetector, img::InputArray; points::InputArray = (CxxMat())) = barcode_detectAndDecodeWithType(cobj, img, points)

function barcode_getDownsamplingThreshold(cobj::BarcodeDetector)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_getDownsamplingThreshold(julia_to_cpp(cobj)))
end

function barcode_setDownsamplingThreshold(cobj::BarcodeDetector, thresh::Float64)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_setDownsamplingThreshold(julia_to_cpp(cobj),julia_to_cpp(thresh)))
end

function barcode_getDetectorScales(cobj::BarcodeDetector)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_getDetectorScales(julia_to_cpp(cobj)))
end

function barcode_setDetectorScales(cobj::BarcodeDetector, sizes::Array{Float32, 1})
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_setDetectorScales(julia_to_cpp(cobj),julia_to_cpp(sizes)))
end

function barcode_getGradientThreshold(cobj::BarcodeDetector)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_getGradientThreshold(julia_to_cpp(cobj)))
end

function barcode_setGradientThreshold(cobj::BarcodeDetector, thresh::Float64)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_setGradientThreshold(julia_to_cpp(cobj),julia_to_cpp(thresh)))
end

function barcode_BarcodeDetector()
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_BarcodeDetector())
end

function barcode_BarcodeDetector(super_resolution_model_path::String)
	return cpp_to_julia(jlopencv_cv_barcode_cv_barcode_BarcodeDetector_cv_barcode_BarcodeDetector_BarcodeDetector(julia_to_cpp(super_resolution_model_path)))
end



