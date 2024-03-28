## mcu 디바이스 크로스 컴파일용 OpenCV 레포


## 사용법


0. 빌드할 디텍토리 생성
```bash
mkdir build && cd build
```

1. cmake 프로젝트 생성하기 (옵션 예시: RenesasM85 보드용)
크로스 컴파일 시 필요한  arm-none-eabi toolchain은 mcu_opencv/arm-none-eabi.toolchain.cmake 파일을 사용하면 됌

```bash
cmake -DBUILD_LIST=calib3d,core \
-DWITH_PROTOBUF=OFF \
-DWITH_PTHREADS_PF=OFF \
-DWITH_QUIRC=OFF \
-DWITH_TIFF=OFF \
-DWITH_V4L=OFF \
-DWITH_VTK=OFF \
-DWITH_WEBP=OFF \
-DWITH_1394=OFF \
-DWITH_ADE=OFF \
-DWITH_EIGEN=OFF \
-DWITH_FFMPEG=OFF \
-DWITH_FLATBUFFERS=OFF \
-DWITH_GSTREAMER=OFF \
-DWITH_GTK=OFF \
-DWITH_IMGCODEC_HDR=OFF \
-DWITH_IMGCODEC_PFM=OFF \
-DWITH_IMGCODEC_PXM=OFF \
-DWITH_IMGCODEC_SUNRASTER=OFF \
-DWITH_IPP=OFF \
-DWITH_ITT=OFF \
-DWITH_JASPER=OFF \
-DWITH_JPEG=OFF \
-DWITH_LAPACK=OFF \
-DWITH_OBSENSOR=OFF \
-DWITH_OPENCL=OFF \
-DWITH_OPENCLAMDBLAS=OFF \
-DWITH_OPENCLAMDFFT=OFF \
-DWITH_OPENEXR=OFF \
-DWITH_OPENJPEG=OFF \
-DWITH_PNG=OFF \
-DWITH_QUIRC=OFF \
-DWITH_TIFF=OFF \
-DWITH_VA=OFF \
-DWITH_VA_INTEL=OFF \
-DWITH_VTK=OFF \
-DWITH_WEBP=OFF \
-DBUILD_opencv_calib3d=ON \
-DBUILD_IPP_IW=OFF \
-DBUILD_ITT=OFF \
-DBUILD_JAVA=OFF \
-DBUILD_PERF_TESTS=OFF \
-DBUILD_PROTOBUF=OFF \
-DBUILD_opencv_apps=OFF \
-DBUILD_opencv_dnn=OFF \
-DBUILD_opencv_gapi=OFF \
-DBUILD_opencv_highgui=OFF \
-DBUILD_opencv_java_bindings_generator=OFF \
-DBUILD_opencv_js_bindings_generator=OFF \
-DBUILD_opencv_python_bindings_generator=OFF \
-DBUILD_opencv_python_tests=OFF \
-DBUILD_opencv_stitching=OFF \
-DBUILD_opencv_ts=OFF \
-DBUILD_opencv_video=OFF \
-DBUILD_opencv_videoio=OFF \
-DBUILD_opencv_photo=OFF \
-DBUILD_opencv_world=OFF \
-DBUILD_opencv_objc_bindings_generator=OFF \
-DBUILD_opencv_objdetect=OFF \
-DBUILD_opencv_ml=OFF \
-DBUILD_opencv_imgcodecs=ON \
-DBUILD_opencv_imgproc=ON \
-DBUILD_opencv_flann=ON \
-DBUILD_opencv_features2d=ON \
-DSOFTFP=ON \
-DCPU_BASELINE="" \
-DCPU_DISPATCH="" \
-DCV_TRACE=OFF \
-DOPENCV_DISABLE_THREAD_SUPPORT=ON \
-DOPENCV_DISABLE_FILESYSTEM_SUPPORT=ON \
-DPARALLEL_ENABLE_PLUGINS=OFF \
-DOPENCV_DNN_CUDA=OFF \
-DBUILD_SHARED_LIBS=OFF \
-DENABLE_VFPV3=OFF \
-DCPU_BASELINE_REQUIRE="" \
-DCMAKE_TOOLCHAIN_FILE=../platforms/linux/arm-none-eabi.toolchain.cmake \
-DCV_DISABLE_OPTIMIZATION=ON \
-DVIDEOIO_ENABLE_PLUGINS=OFF \
-DHIGHGUI_ENABLE_PLUGINS=OFF \
-DENABLE_OMIT_FRAME_POINTER=OFF \
-DCPACK_BINARY_TGZ=OFF \
-DCPACK_BINARY_TZ=OFF \
-DCPACK_BINARY_STGZ=OFF \
-DCPACK_SOURCE_TGZ=OFF \
-DCPACK_SOURCE_TXZ=OFF \
-DCPACK_SOURCE_TZ=OFF \
..
```

2. 프로젝트 빌드하기
```bash
make -j4
```