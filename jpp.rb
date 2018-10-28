require 'formula'

class Jpp < Formula
  desc "JSON Prettier Printer that occupies a minimal number of lines while pretty-printing given JSON."
  homepage "https://godoc.org/github.com/tanishiking/jpp"
  version '0.0.2'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tanishiking/jpp/releases/download/0.0.2/jpp_darwin_amd64.zip"
    sha256 "aaa047c98c86e482e6d231cbc2a3dcfe3f5b9471e30192efd6cb2fc18f3a316a"
  else
    url "https://github.com/tanishiking/jpp/releases/download/0.0.2/jpp_darwin_386.zip"
    sha256 "64eda5e8eb2a2cd9ab93961876c07f871ad272d6d22bff7f92f577089ecf6b8c"
  end

  def install
    bin.install 'jpp'
  end

  test do
    system 'jpp', '--help'
  end
end
