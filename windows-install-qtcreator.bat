powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://download.qt.io/official_releases/qtcreator/4.11/4.11.0/qt-creator-opensource-windows-x86_64-4.11.0.exe\", \"qtcreator.exe\")"
powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile(\"https://raw.githubusercontent.com/Longhanks/github-actions-ci-scripts/master/install-qt.qs.in\", \"install-qt.qs\")"
powershell.exe -Command "(Get-Content install-qtcreator.qs).replace('$PACKAGES', '') | Set-Content install-qtcreator.qs"
powershell.exe -Command "(Get-Content install-qtcreator.qs).replace('$LIST_PACKAGES', 'false') | Set-Content install-qtcreator.qs"
powershell.exe -Command "(Get-Content install-qtcreator.qs).replace('$OUTPUT', [regex]::escape('%CD%\qtcreator-4.11.0')) | Set-Content install-qtcreator.qs"
qtcreator.exe --script install-qtcreator.qs
del qtcreator.exe
del install-qtcreator.qs
