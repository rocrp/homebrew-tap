class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.4/hntui-v0.2.4-darwin-arm64.tar.gz"
      sha256 "72d6c4b8312a18954b6ce1e7159c20bb17f60ca09631968aee6a5049c97c1ae0"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.4/hntui-v0.2.4-darwin-amd64.tar.gz"
      sha256 "ee38673fd5b0e25dd3874d9403d6952f5af1f7858b2c8e7fbd89d1144145164c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.4/hntui-v0.2.4-linux-amd64.tar.gz"
      sha256 "eafa3119f70e56be07808afb0d4bf8610cfcbf3f055224ef40c70d0a5de26d77"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
