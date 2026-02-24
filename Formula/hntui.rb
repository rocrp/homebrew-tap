class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.0/hntui-v0.2.0-darwin-arm64.tar.gz"
      sha256 "4b257a0e882ba264de073f87f9a59411a2f87dac39041af697f10829dd330fd7"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.0/hntui-v0.2.0-darwin-amd64.tar.gz"
      sha256 "43abe0804065ba3709a98ae0c55e16fc0621026a71c285e289f04fb378b024ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.0/hntui-v0.2.0-linux-amd64.tar.gz"
      sha256 "9e4ba78039849c518bda8f790ec7d2aeda17167dbf210a46ec3f6d6f36fca495"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
