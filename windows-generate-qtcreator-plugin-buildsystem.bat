mkdir build                                                                                                              
cd build
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Auxiliary\Build\vcvars64.bat"
..\cmake-3.15.4\CMake\bin\cmake.exe .. -GNinja -DCMAKE_CXX_COMPILER=cl.exe -DCMAKE_BUILD_TYPE=Release -DQTCREATOR_SRC="../qt-creator-opensource-src-4.10.1" -DQTCREATOR_BIN="../qtcreator-4.10.1/bin/qtcreator.exe" -DCMAKE_PREFIX_PATH="%CD%\\..\\qt-5.13.1\\5.13.1\\msvc2017_64"
