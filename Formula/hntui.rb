class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.6/hntui-v0.1.6-darwin-arm64.tar.gz"
      sha256 "e430128d9c42104370eb8a67c28fdc2f0066b4ce25835706628502bd825677e0"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.6/hntui-v0.1.6-darwin-amd64.tar.gz"
      sha256 "58665b39ec67bfddeb6123558f690cf9e57bf78a45559671c0968234149d1434"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.6/hntui-v0.1.6-linux-amd64.tar.gz"
      sha256 "983ad298c99d22efb969b303d5ee53f5ceb856fcdabdf3df3e25348a5f475da8"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
