cd .\plugins
powershell -Command $pword = read-host "Enter password" -AsSecureString ; $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword) ; [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) > .tmp.txt & set /p cure_password=<.tmp.txt & del .tmp.txt
7z x -p%cure_password% cure.7zip
cd .\cure
call .\run.cmd
cd ..
rd /s /q .\cure
