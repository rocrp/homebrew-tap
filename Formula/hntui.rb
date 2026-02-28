class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.3/hntui-v0.2.3-darwin-arm64.tar.gz"
      sha256 "1fcfddc598d5371efb92ae6b575c56fda827469c71785a7f8497bdb56ebd14d0"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.3/hntui-v0.2.3-darwin-amd64.tar.gz"
      sha256 "61bdb51a3f99f84206336b2f4cbab6e5df4da70e89c9f792b51ad8df6fb8fa6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.3/hntui-v0.2.3-linux-amd64.tar.gz"
      sha256 "f2805808f24f9a8c45282e89e07ed8dd9bc6c10fdce506f87de6c170c4a8b0a4"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
