#!/bin/bash

git submodule update --init ./3rdparty/opencv
# opencv contribはBSDのためインストールしない
#git submodule update ./3rdparty/opencv_contrib/

apt-get update
apt-get install libv4l-dev libeigen3-dev libgtk-3-dev freeglut3-dev libtbb-dev \
    libjpeg-dev libpng++-dev libtiff-dev libavformat-dev libopenexr-dev libwebp-dev \
    libhdf5-dev libopenblas-dev liblapacke-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev ffmpeg -y

cd 3rdparty/opencv && mkdir -p build && cd build && \
    cmake \
    -D OPENCV_GENERATE_PKGCONFIG=ON \
    -D CMAKE_BUILD_TYPE=RELEASE \
    -D BUILD_EXAMPLES=OFF \
    -D BUILD_DOCS=OFF \
    -D BUILD_PERF_TESTS=OFF \
    -D BUILD_TESTS=OFF \
    -D BUILD_JAVA=OFF \
    -D BUILD_opencv_app=OFF \
    -D BUILD_opencv_java_bindings_generator=OFF \
    -D BUILD_opencv_python_bindings_generator=OFF \
    -D BUILD_opencv_python_tests=OFF \
    -D BUILD_opencv_ts=OFF \
    -D BUILD_opencv_js=OFF \
    -D BUILD_opencv_datasets=OFF \
    -D BUILD_opencv_dnn_objdetect=OFF \
    -D BUILD_opencv_dnn_superres=OFF \
    -D BUILD_opencv_gapi=OFF \
    .. && make -j8 && make install && ldconfig