require 'formula'

class Jpp < Formula
  desc "JSON Prettier Printer that occupies a minimal number of lines while pretty-printing given JSON."
  homepage "https://godoc.org/github.com/tanishiking/jpp"
  version '0.0.6'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tanishiking/jpp/releases/download/v0.0.6/jpp_darwin_amd64.zip"
    sha256 "0ced16c58cfedd249e73057539e76b795b0fb4c830c0d30555f03e4d189ae4db"
  else
    url "https://github.com/tanishiking/jpp/releases/download/v0.0.6/jpp_darwin_386.zip"
    sha256 "7cd144fb5618e1d5f2562ca53914cb324117681e76be88afcb84e68f7357798c"
  end

  def install
    bin.install 'jpp'
  end

  test do
    system 'jpp', '--help'
  end
end
