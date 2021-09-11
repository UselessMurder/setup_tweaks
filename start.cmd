powershell -Command "& {Set-ExecutionPolicy -ExecutionPolicy RemoteSigned}"
powershell -NoProfile -ExecutionPolicy ByPass -File explorer.ps1
powershell -NoProfile -ExecutionPolicy ByPass -File setup_choco.ps1

%programdata%\chocolatey\bin\RefreshEnv.cmd
powershell -NoProfile -ExecutionPolicy ByPass -File setup_base.ps1

setx /M path %path%;%programdata%\chocolatey\tools\
refreshenv

