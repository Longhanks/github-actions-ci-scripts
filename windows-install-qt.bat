powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://download.qt.io/archive/qt/5.13/5.13.1/qt-opensource-windows-x86-5.13.1.exe\", \"qt.exe\")"
powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://raw.githubusercontent.com/Longhanks/github-actions-ci-scripts/master/install-qt.qs.in\", \"install-qt.qs\")"
powershell.exe -Command "(Get-Content install-qt.qs).replace('$PACKAGES', 'qt.qt5.5131.win64_msvc2017_64') | Set-Content install-qt.qs"
powershell.exe -Command "(Get-Content install-qt.qs).replace('$LIST_PACKAGES', 'false') | Set-Content install-qt.qs"
powershell.exe -Command "(Get-Content install-qt.qs).replace('$OUTPUT', [regex]::escape('%CD%\qt-5.13.1')) | Set-Content install-qt.qs"
qt.exe --script install-qt.qs
del qt.exe
del install-qt.qs
