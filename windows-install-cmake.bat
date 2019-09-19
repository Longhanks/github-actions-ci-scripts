powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3-win64-x64.msi\", \"cmake.msi\")"
msiexec /quiet /a cmake.msi /qn TARGETDIR="%CD%\cmake-3.15.3"
del cmake.msi
