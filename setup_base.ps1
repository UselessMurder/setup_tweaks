$apps=@("7zip")
Foreach ($app in $apps) {
choco install $app -y
}
