```@meta
CurrentModule = OpenCV
```

# OpenCV.jl

**OpenCV.jl** is a Julia package that provides an interface to the popular computer vision library OpenCV. It allows Julia users to leverage the extensive functionalities and algorithms offered by OpenCV for various computer vision tasks, such as image and video processing, object detection, feature extraction, and more.

## Features

- Comprehensive OpenCV bindings: OpenCV.jl provides comprehensive bindings to the OpenCV library, enabling Julia users to access a wide range of computer vision algorithms and functionalities.
- Efficient and performant: The package is designed to leverage the speed and efficiency of both Julia and OpenCV, ensuring high-performance computer vision tasks.
- Interoperability: The package supports interoperability between Julia arrays and OpenCV's data structures, facilitating data exchange and manipulation between the two.

## Installation

You can install OpenCV.jl using Julia's package manager. Open a Julia REPL and run the following command:

```julia
] add OpenCV
```

This will download and install the package and its dependencies.

## Usage

To start using OpenCV.jl in your Julia code, you first need to import the package:

```julia
using OpenCV
```

Once imported, you can call OpenCV functions and use its data structures. Here's a simple example that loads an image and applies a Gaussian blur:

```julia
using ImageCore, OpenCV, TestImages, MosaicViews

img_orig = testimage("Mandrill")

img_raw =  collect(rawview(channelview(img_orig)))

img_gray = OpenCV.cvtColor(img_raw, OpenCV.COLOR_RGB2GRAY)

img_blur = OpenCV.blur(img_gray, OpenCV.Size(Int32(9), Int32(9)))

img_back =  colorview(Gray, float.(img_blur)./255)[1,:,:]

mosaic(img_orig, img_back; nrow=1)
```

#### Output:
![](https://i.imgur.com/YfjUJpn.png)

For more information on the available functions and usage examples, please refer to the [documentation](https://juliaimages.org/OpenCV.jl/latest/).

## Contributing

OpenCV.jl welcomes contributions from the community. If you encounter any issues, have suggestions for improvements, or would like to contribute code, please check the [GitHub repository](https://github.com/JuliaImages/OpenCV.jl).

## License

OpenCV.jl is licensed under the [MIT License](https://github.com/JuliaImages/OpenCV.jl/blob/main/LICENSE). Please refer to the license file for more information.

## Acknowledgments

OpenCV.jl is built upon the excellent work of the OpenCV community. We are grateful for their continuous efforts in advancing the field of computer vision. @archit120 has been instrumental in the development of this package during GSOC 2021 and GSOC 2020.

```@autodocs
Modules = [OpenCV]
```