// This file is part of OpenCV project.
// It is subject to the license terms in the LICENSE file found in the top-level directory
// of this distribution and at http://opencv.org/license.html
// Copyright (C) 2020 by Archit Rungta

#include "jlcxx/array.hpp"
#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/tuple.hpp"

#include "jlcv.hpp"

using namespace cv;
using namespace std;
using namespace jlcxx;


namespace jlcxx
{
template <typename T>
struct IsSmartPointerType<cv::Ptr<T>> : std::true_type
{
};

template<typename T, int Val>
struct BuildParameterList<cv::Vec<T, Val>>
{
typedef ParameterList<T, std::integral_constant<int, Val>> type;
};

${include_code}


} // namespace jlcxx
JLCXX_MODULE cv_wrap(jlcxx::Module &mod)
{
    mod.map_type<TermCriteria>("TermCriteria");
    mod.map_type<Range>("Range");

    mod.add_type<Parametric<TypeVar<1>, TypeVar<2>>>("CxxVec")
        .apply<Vec4f, Vec6f, Vec3d, Vec2d>([](auto wrapped){
            typedef typename decltype(wrapped)::type WrappedT;
            typedef typename get_template_type_vec<WrappedT>::type T;
            wrapped.template constructor<const T*>();
        });

    mod.add_type<Mat>("CxxMat").constructor<int, const int *, int, void *, const size_t *>();

    mod.method("jlopencv_core_get_sizet", [](){return sizeof(size_t);});
    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");
    mod.method("jlopencv_core_Mat_mutable_data", [](Mat m) {
        // OpenCV 5 has 0-D and 1-D Mats; present them as rows x 1 (the shape 4.x gave
        // vectors) instead of indexing size[1]/step[1], which assert for dims < 2.
        const int d = m.dims;
        const int rows = d >= 1 ? m.size[0] : (m.empty() ? 0 : 1);
        const int cols = d >= 2 ? m.size[1] : (rows > 0 ? 1 : 0);
        const size_t col_step = d >= 2 ? m.step[1] : m.elemSize();
        const size_t row_step = d >= 2 ? m.step[0] : m.elemSize();
        return make_tuple(m.data, m.type(), m.channels(), cols, rows, col_step, row_step);
    });


    mod.add_type<Parametric<TypeVar<1>>>("CxxScalar")
        .apply<Scalar_<int>, Scalar_<float>, Scalar_<double>>([](auto wrapped) {
                typedef typename decltype(wrapped)::type WrappedT;
                typedef typename get_template_type<WrappedT>::type T;
                wrapped.template constructor<T, T, T, T>();
            });




//
// Manual Wrapping BEGIN
//

#ifdef HAVE_OPENCV_HIGHGUI
    mod.method("createButton", [](const string & bar_name, jl_value_t* on_change, int type, bool initial_button_state) {createButton(bar_name, [](int s, void* c) {
        JuliaFunction f((jl_value_t*)c);
        f(forward<int>(s));
    }, (void*)on_change, type, initial_button_state);});

    mod.method("setMouseCallback", [](const string & winname, jl_value_t* onMouse) {
        setMouseCallback(winname, [](int event, int x, int y, int flags, void* c) {
        JuliaFunction f((jl_value_t*)c);
        f(forward<int>(event), forward<int>(x), forward<int>(y), forward<int>(flags));
    }, (void*)onMouse);});

    mod.method("createTrackbar", [](const String &trackbarname, const String &winname, int& value, int count, jl_value_t* onChange) {
        createTrackbar(trackbarname, winname, &value, count, [](int s, void* c) {
        JuliaFunction f((jl_value_t*)c);
        f(forward<int>(s));
    }, (void*)onChange);});


#endif

#ifdef HAVE_OPENCV_OBJDETECT
    mod.add_type<cv::CascadeClassifier>("CascadeClassifier");
    mod.method("jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_CascadeClassifier", [](string &filename) { return jlcxx::create<cv::CascadeClassifier>(filename); });
    mod.method("jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_detectMultiScale", [](cv::CascadeClassifier &cobj, Mat &image, double &scaleFactor, int &minNeighbors, int &flags, Size &minSize, Size &maxSize) {vector<Rect> objects; cobj.detectMultiScale(image, objects, scaleFactor, minNeighbors, flags, minSize, maxSize);  return objects; });
    mod.method("jlopencv_cv_cv_CascadeClassifier_cv_CascadeClassifier_empty", [](cv::CascadeClassifier &cobj) { auto retval = cobj.empty();  return retval; });

    mod.set_const("CASCADE_DO_CANNY_PRUNING", (int)cv::CASCADE_DO_CANNY_PRUNING);
    mod.set_const("CASCADE_DO_ROUGH_SEARCH", (int)cv::CASCADE_DO_ROUGH_SEARCH);
    mod.set_const("CASCADE_FIND_BIGGEST_OBJECT", (int)cv::CASCADE_FIND_BIGGEST_OBJECT);
    mod.set_const("CASCADE_SCALE_IMAGE", (int)cv::CASCADE_SCALE_IMAGE);
#endif

//
// Manual Wrapping END
//

    ${cpp_code}

//
// Manual Wrapping (after the generated types are registered)
//

#ifdef HAVE_OPENCV_DNN
    // cv::MatShape is a class in OpenCV 5 (a typedef of std::vector<int> in 4.x); pass
    // shapes to and from Julia as integer vectors.
    {
        auto to_shapes = [](const vector<vector<int>>& v) {
            vector<MatShape> s;
            for (const auto& x : v) s.emplace_back(x);
            return s;
        };
        auto from_shapes = [](const vector<MatShape>& s) {
            vector<vector<int>> v;
            for (const auto& x : s) v.emplace_back(x.begin(), x.end());
            return v;
        };
        mod.method("jlopencv_dnn_Net_setInputShape", [](cv::dnn::Net& net, string& name, vector<int>& shape) {
            net.setInputShape(name, MatShape(shape));
        });
        mod.method("jlopencv_dnn_Net_getFLOPS", [to_shapes](cv::dnn::Net& net, vector<vector<int>>& shapes, vector<int>& types) {
            return (int64_t)net.getFLOPS(to_shapes(shapes), types);
        });
        mod.method("jlopencv_dnn_Net_getMemoryConsumption", [to_shapes](cv::dnn::Net& net, vector<vector<int>>& shapes, vector<int>& types) {
            size_t weights = 0, blobs = 0;
            net.getMemoryConsumption(to_shapes(shapes), types, weights, blobs);
            return make_tuple((int64_t)weights, (int64_t)blobs);
        });
        mod.method("jlopencv_dnn_Net_getLayerShapes", [to_shapes, from_shapes](cv::dnn::Net& net, vector<vector<int>>& shapes, vector<int>& types, int64_t layerId) {
            vector<MatShape> in, out;
            net.getLayerShapes(to_shapes(shapes), types, (int)layerId, in, out);
            return make_tuple(from_shapes(in), from_shapes(out));
        });
    }
#endif

}
