class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.7/hntui-v0.1.7-darwin-arm64.tar.gz"
      sha256 "484db9a61bea9376227101e22fcc5414e615d2bca8310265dea1fde26152d30f"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.7/hntui-v0.1.7-darwin-amd64.tar.gz"
      sha256 "b097c140e807c373b3b23bd21e74023e06868eae5d085211f1378a85dfdb3ac4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.7/hntui-v0.1.7-linux-amd64.tar.gz"
      sha256 "94379c5efa9dd932fd5e2ca34d339e0051c738c700ac7ce8b4cf7d6a2fee7ef2"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
