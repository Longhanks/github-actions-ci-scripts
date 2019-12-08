mkdir -p /opt/cmake
wget -nv https://github.com/Kitware/CMake/releases/download/v3.16.0/cmake-3.16.0-Linux-x86_64.sh -O cmake.sh
chmod +x cmake.sh
./cmake.sh --prefix=/opt/cmake --skip-license
rm cmake.sh
