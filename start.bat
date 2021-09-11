reg HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v Hidden /d 1 /f
reg HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v HideFileExt /d 0 /f
reg HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v ShowSuperHidden /d 1 /f

taskkill /f /im explorer.exe
