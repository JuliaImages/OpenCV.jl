module utils
import ..OpenCV


const dumpInputArray = OpenCV.utils_dumpInputArray
const dumpInputArrayOfArrays = OpenCV.utils_dumpInputArrayOfArrays
const dumpInputOutputArray = OpenCV.utils_dumpInputOutputArray
const dumpInputOutputArrayOfArrays = OpenCV.utils_dumpInputOutputArrayOfArrays
const dumpBool = OpenCV.utils_dumpBool
const dumpInt = OpenCV.utils_dumpInt
const dumpSizeT = OpenCV.utils_dumpSizeT
const dumpFloat = OpenCV.utils_dumpFloat
const dumpDouble = OpenCV.utils_dumpDouble
const dumpCString = OpenCV.utils_dumpCString
const testAsyncArray = OpenCV.utils_testAsyncArray
const testAsyncException = OpenCV.utils_testAsyncException



include("cv_utils_fs_wrap.jl")
include("cv_utils_nested_wrap.jl")
end