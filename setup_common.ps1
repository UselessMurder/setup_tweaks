$apps=@("Firefox", "Far", "7zip", "winrar", "notepadplusplus", "putty", "foxitreader", "rufus", "winmerge", "virtualclonedrive", "deluge", "winscp", "vlc", "gimp", "hxd", "windjview", "jre8", "hwmonitor", "ConEmu", "virtualbox", "sysinternals", "licecap", "sharex")
Foreach ($app in $apps) {
choco install $app -y
}
