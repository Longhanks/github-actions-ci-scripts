powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://download.qt.io/official_releases/qtcreator/4.10/4.10.0/qt-creator-opensource-windows-x86_64-4.10.0.exe\", \"qtcreator.exe\")"
powershell.exe -Command "Copy-Item \"buildutils/install-qt.qs.in\" -Destination \"install-qtcreator.qs\""
powershell.exe -Command "(Get-Content install-qtcreator.qs).replace('$PACKAGES', '') | Set-Content install-qtcreator.qs"
powershell.exe -Command "(Get-Content install-qtcreator.qs).replace('$LIST_PACKAGES', 'false') | Set-Content install-qtcreator.qs"
powershell.exe -Command "(Get-Content install-qtcreator.qs).replace('$OUTPUT', [regex]::escape('%CD%\qtcreator-4.10.0')) | Set-Content install-qtcreator.qs"
qtcreator.exe --script install-qtcreator.qs
del qtcreator.exe
del install-qtcreator.qs
