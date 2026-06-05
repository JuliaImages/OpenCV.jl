"""
    OpenCVError(msg) <: Exception

Error raised by OpenCV.jl's binding layer — e.g. an unsupported array element type
when converting to or from a `cv::Mat`.

!!! note
    Errors thrown by OpenCV's own C++ code (`cv::Exception`, assertion failures)
    currently surface as `ErrorException`s carrying the C++ message. Re-wrapping those
    as `OpenCVError` would require the generated wrappers to emit `try`/`catch` and is
    not yet done.
"""
struct OpenCVError <: Exception
    msg::String
end

Base.showerror(io::IO, e::OpenCVError) = print(io, "OpenCVError: ", e.msg)
