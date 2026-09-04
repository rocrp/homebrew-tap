class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.6.0/hntui-v0.6.0-darwin-arm64.tar.gz"
      sha256 "a24b7799ab01dcf2aa392a9319944bd7c355978b313fc39230fdc14d1c400667"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.6.0/hntui-v0.6.0-darwin-amd64.tar.gz"
      sha256 "6da154d7fab9ca242e0521fdc941244a8af83d88f387af79827b168e054bce3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.6.0/hntui-v0.6.0-linux-amd64.tar.gz"
      sha256 "64c7600b62e59fcd19ee732ff2c9f4bb3b2aea3cd80be9bf821200f29599a3d1"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
