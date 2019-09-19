mkdir -p /opt/cmake
wget https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3-Linux-x86_64.sh -O cmake.sh
chmod +x cmake.sh
./cmake.sh --prefix=/opt/cmake --skip-license
rm cmake.sh