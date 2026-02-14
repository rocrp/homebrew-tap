class Lstui < Formula
  desc "Lobsters TUI (stories + nested comments)"
  homepage "https://github.com/rocrp/lstui"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.3/lstui-v0.1.3-darwin-arm64.tar.gz"
      sha256 "1bec74dc6cf72ebe327c11d610b5e7e42b1c40bf39a8ec4c6089f4e13d231671"
    end

    on_intel do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.3/lstui-v0.1.3-darwin-amd64.tar.gz"
      sha256 "9d08dfb2b3e2658b489ea8927d46c12f6bdb9a03c54c2b319197b0d02a872e30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.3/lstui-v0.1.3-linux-amd64.tar.gz"
      sha256 "873998c06a62d22220df5ee35bdc86384241a0ad0a8db63496bee1c452ae1e38"
    end
  end

  def install
    bin.install "lstui"
  end

  test do
    system "#{bin}/lstui", "--help"
  end
end
