powershell -Command "& {Set-ExecutionPolicy -ExecutionPolicy RemoteSigned}"
powershell -NoProfile -ExecutionPolicy ByPass -File explorer.ps1
powershell -NoProfile -ExecutionPolicy ByPass -File setup_choco.ps1

REM setx /M path %path%;%programdata%\chocolatey\tools\
refreshenv
powershell -NoProfile -ExecutionPolicy ByPass -File setup_base.ps1
