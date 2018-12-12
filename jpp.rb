require 'formula'

class Jpp < Formula
  desc "JSON Prettier Printer that occupies a minimal number of lines while pretty-printing given JSON."
  homepage "https://godoc.org/github.com/tanishiking/jpp"
  version '0.0.3'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tanishiking/jpp/releases/download/0.0.3/jpp_darwin_amd64.zip"
    sha256 "7cf3020ac383eabe3c471f668cedfbcd4b9e14970401d1ae9dde1d48978ee3f3"
  else
    url "https://github.com/tanishiking/jpp/releases/download/0.0.3/jpp_darwin_386.zip"
    sha256 "119048033c303054b47e36b297552f502a35a5d71f2cd4c5ab61c1b9813e2686"
  end

  def install
    bin.install 'jpp'
  end

  test do
    system 'jpp', '--help'
  end
end
