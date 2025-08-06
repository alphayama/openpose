git submodule update --init --recursive --remote 
apt install cmake libprotobuf-c-dev python3-protobuf libprotobuf23 libprotobuf-dev libgoogle-glog-dev libopencv-dev
mkdir -p /opt/opencv/build
cp /usr/lib/x86_64-linux-gnu/cmake/opencv4/* /opt/opencv/build/
mkdir build && cd build 
cmake \
  -DOpenCV_CONFIG_FILE=/opt/opencv/build/OpenCVConfig.cmake \
  -DDOWNLOAD_BODY_25_MODEL=OFF \
  -DDOWNLOAD_FACE_MODEL=OFF \
  -DDOWNLOAD_HAND_MODEL=OFF \
  -DBUILD_EXAMPLES=OFF \
  -DBUILD_PYTHON=ON \
  ../ 
make -j$nrpoc
