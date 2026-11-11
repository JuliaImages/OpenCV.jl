#!/usr/bin/python

# This file is part of OpenCV project.
# It is subject to the license terms in the LICENSE file found in the top-level directory
# of this distribution and at http://opencv.org/license.html
# Copyright (C) 2020 by Archit Rungta
#
# Usage: gen_all.py --root=<dir> [--root=<dir>...] <config.json> <opencv_module>...
#
# Each --root is a directory holding OpenCV modules (opencv/modules,
# opencv_contrib/modules). A module's headers are looked up under
# <root>/<module>/include/opencv2/.

import sys
import subprocess
import os

# Headers parsed for each module, relative to <module>/include/opencv2/. This table is
# the single place that decides what the generator sees; MODULE_LIST decides which
# modules are built. A module missing from this table is built but not wrapped.
MODULE_HEADERS = {
    'opencv_core': ['core.hpp', 'core/base.hpp', 'core/bindings_utils.hpp',
                    'core/optim.hpp', 'core/persistence.hpp', 'core/types.hpp',
                    'core/utility.hpp', 'core/exception.hpp'],
    'opencv_imgproc': ['imgproc.hpp'],
    'opencv_dnn': ['dnn/dnn.hpp'],
    'opencv_imgcodecs': ['imgcodecs.hpp'],
    'opencv_videoio': ['videoio.hpp'],
    'opencv_highgui': ['highgui.hpp'],
    'opencv_features': ['features.hpp'],
    'opencv_geometry': ['geometry/3d.hpp', 'geometry/2d.hpp'],
    'opencv_stereo': ['stereo.hpp'],
    'opencv_calib': ['calib.hpp'],
    'opencv_objdetect': ['objdetect.hpp', 'objdetect/graphical_code_detector.hpp',
                         'objdetect/aruco_dictionary.hpp', 'objdetect/aruco_board.hpp',
                         'objdetect/aruco_detector.hpp', 'objdetect/charuco_detector.hpp',
                         'objdetect/face.hpp', 'objdetect/barcode.hpp',
                         'objdetect/mcc_checker_detector.hpp'],
    'opencv_video': ['video/tracking.hpp', 'video/background_segm.hpp'],
    'opencv_stitching': ['stitching.hpp'],
    'opencv_photo': ['photo.hpp', 'photo/ccm.hpp', 'photo/segmentation.hpp'],
    'opencv_ml': ['ml.hpp'],
    'opencv_ximgproc': ['ximgproc.hpp', 'ximgproc/edge_filter.hpp',
                        'ximgproc/disparity_filter.hpp', 'ximgproc/sparse_match_interpolator.hpp',
                        'ximgproc/structured_edge_detection.hpp', 'ximgproc/edgeboxes.hpp',
                        'ximgproc/edge_drawing.hpp', 'ximgproc/seeds.hpp', 'ximgproc/segmentation.hpp',
                        'ximgproc/fast_hough_transform.hpp', 'ximgproc/estimated_covariance.hpp',
                        'ximgproc/weighted_median_filter.hpp', 'ximgproc/slic.hpp', 'ximgproc/lsc.hpp',
                        'ximgproc/paillou_filter.hpp', 'ximgproc/fast_line_detector.hpp',
                        'ximgproc/deriche_filter.hpp', 'ximgproc/peilin.hpp',
                        'ximgproc/fourier_descriptors.hpp', 'ximgproc/ridgefilter.hpp',
                        'ximgproc/brightedges.hpp', 'ximgproc/run_length_morphology.hpp',
                        'ximgproc/edgepreserving_filter.hpp', 'ximgproc/color_match.hpp',
                        'ximgproc/radon_transform.hpp', 'ximgproc/find_ellipses.hpp',
                        'ximgproc/scansegment.hpp'],
    'opencv_xphoto': ['xphoto.hpp', 'xphoto/white_balance.hpp', 'xphoto/tonemap.hpp',
                      'xphoto/oilpainting.hpp', 'xphoto/inpainting.hpp',
                      'xphoto/dct_image_denoising.hpp', 'xphoto/bm3d_image_denoising.hpp'],
    'opencv_tracking': ['tracking.hpp'],
    'opencv_optflow': ['optflow.hpp', 'optflow/motempl.hpp', 'optflow/pcaflow.hpp',
                       'optflow/rlofflow.hpp'],
    'opencv_xfeatures2d': ['xfeatures2d.hpp'],
}

args = sys.argv[1:]
roots = [a[len('--root='):] for a in args if a.startswith('--root=')]
args = [a for a in args if not a.startswith('--root=')]
config, modules = args[0], args[1:]


def module_include_dir(module):
    name = module[len('opencv_'):]
    for root in roots:
        d = os.path.join(root, name, 'include', 'opencv2')
        if os.path.isdir(d):
            return d
    sys.exit("gen_all.py: module %s not found under %s" % (module, roots))


hdr_list = []
for module in modules:
    for hdr in MODULE_HEADERS.get(module, []):
        path = os.path.join(module_include_dir(module), hdr)
        if not os.path.exists(path):
            sys.exit("gen_all.py: header %s of %s not found" % (path, module))
        hdr_list.append(path)

if not os.path.exists('autogen_cpp'):
    os.makedirs('autogen_cpp')
    os.makedirs('autogen_jl')

for script in ('gen3_cpp.py', 'gen3_julia_cxx.py', 'gen3_julia.py'):
    rc = subprocess.call([sys.executable, script, ';'.join(hdr_list), config])
    if rc != 0:
        sys.exit("gen_all.py: %s failed with exit code %d" % (script, rc))
