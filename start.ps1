$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
set-itemproperty $key Hidden 1
set-itemproperty $key HideFileExt 0
set-itemproperty $key ShowSuperHidden 1

stop-process -processname explorer
set-executionpolicy remotesigned
