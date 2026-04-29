class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.3.0/hntui-v0.3.0-darwin-arm64.tar.gz"
      sha256 "ee0329bc4550131b9a43870c6d127cac4379611cf9b2d723594ae715d39a408d"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.3.0/hntui-v0.3.0-darwin-amd64.tar.gz"
      sha256 "0f1377f6a8e3564a324137fdb566aa35a53ecaaeea3e99fe2f5b83110da28951"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.3.0/hntui-v0.3.0-linux-amd64.tar.gz"
      sha256 "c3b94e03cf828666bdbb03f753f8dc27ee64a2a5e91e68b26f653355f8be92a4"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
