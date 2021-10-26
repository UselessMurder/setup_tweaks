$apps=@("Firefox", "Far", "7zip", "winrar", "notepadplusplus", "putty", "foxitreader", "rufus", "winmerge", "virtualclonedrive", "deluge", "winscp", "vlc", "gimp", "hxd", "windjview", "jre8", "hwmonitor", "ConEmu", "virtualbox", "sysinternals", "licecap", "sharex", "gpg4win")
Foreach ($app in $apps) {
choco install $app -y
}

$workPath="C:\work";
$srcPath="C:\work\sources"
$samplesPath="C:\work\samples"

function Make-Diectory {
  param(
    [String] $dirName
  )
    if(!(Test-Path -path $dirName))
    {
        New-Item -ItemType directory -Path $dirName
        Write-Host "Folder path has been created: " $dirName
    }
}

Make-Diectory $workPath
Make-Diectory $srcPath
Make-Diectory $samplesPath
