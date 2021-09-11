powershell -Command "& {Set-ExecutionPolicy -ExecutionPolicy RemoteSigned}"
powershell -NoProfile -ExecutionPolicy ByPass -File start.ps1
