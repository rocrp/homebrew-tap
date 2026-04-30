class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.1/hntui-v0.4.1-darwin-arm64.tar.gz"
      sha256 "8b03a6f7a5b4c6d6ef82732697ecb1904e7889d8db4a24cedc8792c875c4d9fd"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.1/hntui-v0.4.1-darwin-amd64.tar.gz"
      sha256 "19ff6a84fbb5e07a508af000d0e934ca2fa92dc8dabb083d1a1e5bdfacb84c8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.1/hntui-v0.4.1-linux-amd64.tar.gz"
      sha256 "cd03015e875e4b42c40933185255c3d292f81307ec9a7a3736932d85abf43956"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
