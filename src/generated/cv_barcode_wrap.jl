module barcode
import ..OpenCV


const decodeWithType = OpenCV.barcode_decodeWithType
const detectAndDecodeWithType = OpenCV.barcode_detectAndDecodeWithType
const getDownsamplingThreshold = OpenCV.barcode_getDownsamplingThreshold
const setDownsamplingThreshold = OpenCV.barcode_setDownsamplingThreshold
const getDetectorScales = OpenCV.barcode_getDetectorScales
const setDetectorScales = OpenCV.barcode_setDetectorScales
const getGradientThreshold = OpenCV.barcode_getGradientThreshold
const setGradientThreshold = OpenCV.barcode_setGradientThreshold
const BarcodeDetector = OpenCV.barcode_BarcodeDetector



end