powershell -Command "& {Set-ExecutionPolicy -ExecutionPolicy RemoteSigned}"
powershell -NoProfile -ExecutionPolicy ByPass -File explorer.ps1
powershell -NoProfile -ExecutionPolicy ByPass -File setup_choco.ps1
refreshenv

setx /M path "%path%;%programdata%\chocolatey\tools\"
powershell -NoProfile -ExecutionPolicy ByPass -File setup_base.ps1
