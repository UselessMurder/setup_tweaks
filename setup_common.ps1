$apps=@("Firefox", "Far", "7zip", "winrar", "notepadplusplus", "putty", "foxitreader", "lightshot", "rufus", "winmerge", "virtualclonedrive", "deluge", "winscp", "vlc", "gimp", "hxd", "windjview", "jre8", "hwmonitor", "ConEmu", "virtualbox", "sysinternals")
Foreach ($app in $apps) {
choco install $app -y
}
