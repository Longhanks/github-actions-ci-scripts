powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://download.qt.io/official_releases/qtcreator/4.10/4.10.2/qt-creator-opensource-src-4.10.2.zip\", \"qt-creator-opensource-src-4.10.2.zip\")"
powershell.exe -Command "Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory(\"%CD%\qt-creator-opensource-src-4.10.2.zip\", \"%CD%\")"
del qt-creator-opensource-src-4.10.2.zip
