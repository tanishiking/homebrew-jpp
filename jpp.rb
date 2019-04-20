require 'formula'

class Jpp < Formula
  desc "JSON Prettier Printer that occupies a minimal number of lines while pretty-printing given JSON."
  homepage "https://godoc.org/github.com/tanishiking/jpp"
  version '0.0.5'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tanishiking/jpp/releases/download/v0.0.5/jpp_darwin_amd64.zip"
    sha256 "49cd23f691438c21f6123bf076a6a9d74d31a8c3b6ab960e0fc7745498d55a0e"
  else
    url "https://github.com/tanishiking/jpp/releases/download/v0.0.5/jpp_darwin_386.zip"
    sha256 "761f1796641dcf35ab4982a9937af06cdaca4ed86e54466f99350342ce806b3f"
  end

  def install
    bin.install 'jpp'
  end

  test do
    system 'jpp', '--help'
  end
end
