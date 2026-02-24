class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.1/hntui-v0.2.1-darwin-arm64.tar.gz"
      sha256 "0407520ab55cc324643c4619b7d7337bce72ed5f2888ff9342e6900ecd1ebd88"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.1/hntui-v0.2.1-darwin-amd64.tar.gz"
      sha256 "82913731bf87c10d5c0506191f59e00adea14832c825247183ad84fd7b515f28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.1/hntui-v0.2.1-linux-amd64.tar.gz"
      sha256 "8152ca568920d171450db3ffaf30e39cae7ef3c249075d9fa7498939d6a45a90"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
