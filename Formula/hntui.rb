class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.2/hntui-v0.2.2-darwin-arm64.tar.gz"
      sha256 "b121a6a93c880ec419cc8cc9720d04acf524d2af9d88ca31e57d98c81bab4d0a"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.2/hntui-v0.2.2-darwin-amd64.tar.gz"
      sha256 "288cdaa5dd84e5ce75226e5afff2e98280d256e288411e14fa5623c562dc6395"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.2/hntui-v0.2.2-linux-amd64.tar.gz"
      sha256 "49c1e4e24796c52b38032cc9fc4ff27f39de5bec957a8cb27c14fb9d59c614bd"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
