$apps=@("vcredist-all", "rust", "llvm", "dotnetcoresdk", "dotnet4.7", "cmake", "ninja", "jdk11", "jdk8", "make", "mingw")
Foreach ($app in $apps) {
choco install $app -y
}
