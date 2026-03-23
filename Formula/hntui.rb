class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.9/hntui-v0.2.9-darwin-arm64.tar.gz"
      sha256 "0509717b86b9e8a1d0eeef593632e2771a207f9756569858314f10a7b3dbbc2b"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.9/hntui-v0.2.9-darwin-amd64.tar.gz"
      sha256 "3e817130eb9cee71f2d1034495ba0d4f4abf4ad4721d46b3d7c4d4d4e00064d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.9/hntui-v0.2.9-linux-amd64.tar.gz"
      sha256 "7796a6ae6bd475496964b357672d782a713a164aff48c55205cbca890e4fc0e6"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
