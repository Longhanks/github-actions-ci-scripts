mkdir build
cd build
/opt/cmake/bin/cmake .. -GNinja -DCMAKE_CXX_COMPILER=clang++-9 -DCMAKE_BUILD_TYPE=Release -DQTCREATOR_SRC="/qt-creator-opensource-src-4.11.0" -DQTCREATOR_BIN="/opt/qtcreator/bin/qtcreator" -DCMAKE_PREFIX_PATH=/Qt/5.14.0/gcc_64
