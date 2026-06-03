module OpenCV

using OpenCV_jll
using FileIO
using FileIO: DataFormat, File, Stream, stream

import Base.size

# Julia wrapper bindings. Previously these were generated at OpenCV binary-build
# time and shipped inside OpenCV_jll; they now live in this repository (see gen/)
# and are regenerated with `julia gen/regenerate.jl` on an OpenCV version bump.
# `cv_cxx.jl` loads the compiled glue via OpenCV_jll.get_libopencv_julia_path and
# pulls in the static helpers plus generated/cv_cxx_wrap.jl.
include("cv_cxx.jl")
include("generated/cv_wrap.jl")

include("fileio.jl")
include("show.jl")

end
