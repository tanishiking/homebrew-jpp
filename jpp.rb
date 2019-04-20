require 'formula'

class Jpp < Formula
  desc "JSON Prettier Printer that occupies a minimal number of lines while pretty-printing given JSON."
  homepage "https://godoc.org/github.com/tanishiking/jpp"
  version '0.0.4'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tanishiking/jpp/releases/download/v0.0.4/jpp_darwin_amd64.zip"
    sha256 "d963af92412a5860139536df2c8b06aa71a7b1d36ad544e8451757abb2670cfa"
  else
    url "https://github.com/tanishiking/jpp/releases/download/v0.0.4/jpp_darwin_386.zip"
    sha256 "1c4cb430414f07b5ccf33ca289952b308854a1afaf348c4bcbe2f48117a6e6cb"
  end

  def install
    bin.install 'jpp'
  end

  test do
    system 'jpp', '--help'
  end
end
