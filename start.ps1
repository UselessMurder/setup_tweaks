$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
set-itemproperty $key Hidden 1
set-itemproperty $key HideFileExt 0
set-itemproperty $key ShowSuperHidden 1
stop-process -processname explorer

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
