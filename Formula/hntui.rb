class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.8/hntui-v0.2.8-darwin-arm64.tar.gz"
      sha256 "633c5fc65faa3d5948888c99f23479e462b54f73effa41d42f38065fad54c710"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.8/hntui-v0.2.8-darwin-amd64.tar.gz"
      sha256 "5153b9b9584c8efc264a6c7164b49622086b9f7a29f4ed9de65430b1f6900b6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.8/hntui-v0.2.8-linux-amd64.tar.gz"
      sha256 "dcb21aa58db0b6f68c683f9300ef8c4762137f6092b5e45357112219db339ab9"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
