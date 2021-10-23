$apps=@("git", "svn", "sudo", "hashdeep", "python2", "python3", "explorersuite", "radare2", "upx")
Foreach ($app in $apps) {
choco install $app -y
}

New-Item -Path "C:\Python27\python2.exe" -ItemType SymbolicLink -Value "C:\Python27\python.exe"
New-Item -Path "C:\Python310\python3.exe" -ItemType SymbolicLink -Value "C:\Python310\python.exe"

pip2 install virtualenv
pip3 install virtualenv

New-Item -Path "C:\Python27\Scripts\virtualenv2.exe" -ItemType SymbolicLink -Value "C:\Python27\Scripts\virtualenv.exe"
New-Item -Path "C:\Python310\Scripts\virtualenv3.exe" -ItemType SymbolicLink -Value "C:\Python310\Scripts\virtualenv.exe"

pip3 install ipython[all]
