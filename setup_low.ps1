$apps=@("vcredist-all", "microsoft-build-tools", "rust", "llvm", "cmake", "ninja", "make", "mingw", "meson")
Foreach ($app in $apps) {
choco install $app -y
}
