powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://github.com/ninja-build/ninja/releases/download/v1.9.0/ninja-win.zip\", \"ninja-win.zip\")"
powershell.exe -Command "Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory(\"%CD%\ninja-win.zip\", \"%CD%\")"
del ninja-win.zip
