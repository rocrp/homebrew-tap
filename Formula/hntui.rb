class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.6/hntui-v0.2.6-darwin-arm64.tar.gz"
      sha256 "512e4ef6f7c0cbcfbd26d0333cb3bcb37d6614aa562c33b02c1e72c89500c61a"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.6/hntui-v0.2.6-darwin-amd64.tar.gz"
      sha256 "c76e4cbc4d0d5693864e74805e3308ea91ae2535b14017eecd934da169cf31b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.6/hntui-v0.2.6-linux-amd64.tar.gz"
      sha256 "4939ed5b1879c97b8e3a227ed92333f29fb821e1b89fb084f88b4d24204a004e"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
