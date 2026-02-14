class Lstui < Formula
  desc "Lobsters TUI (stories + nested comments)"
  homepage "https://github.com/rocrp/lstui"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.1/lstui-v0.1.1-darwin-arm64.tar.gz"
      sha256 "8e1ac0917d21c86ced4c520ffdd9cb9ab066be85e4a50883a00f8eb82d34daff"
    end

    on_intel do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.1/lstui-v0.1.1-darwin-amd64.tar.gz"
      sha256 "0a6249014f39cef91dca56292a5f056817a61dbb5067b3efe65d1eebd0780f0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.1/lstui-v0.1.1-linux-amd64.tar.gz"
      sha256 "6a82699dde6753ab791c1ac824cdc264aa049d3fa0993ff1f15196af4643d4bd"
    end
  end

  def install
    bin.install "lstui"
  end

  test do
    system "#{bin}/lstui", "--help"
  end
end
