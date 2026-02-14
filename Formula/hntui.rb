class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.5/hntui-v0.1.5-darwin-arm64.tar.gz"
      sha256 "631be56251512a7c3c72d73fb97f64b2f5bcd1701f5e0d312368eebaf15853df"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.5/hntui-v0.1.5-darwin-amd64.tar.gz"
      sha256 "0931ebf5049bba5549fc0dc6e21bc0096f35f521491a3fde44f5d0848bb6d3f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.5/hntui-v0.1.5-linux-amd64.tar.gz"
      sha256 "73f0de8fc12f58e245d2d0339c8ad76ce80474f73980c43bf4d83bec3977e5b6"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
