class Lstui < Formula
  desc "Lobsters TUI (stories + nested comments)"
  homepage "https://github.com/rocrp/lstui"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/lstui/releases/download/v0.0.2/lstui-v0.0.2-macos-arm64.tar.gz"
      sha256 "08b3e9135302fedbfb02d4e6a7e3c06c9806c2a763d445ff3922c32f6166d065"
    end
  end

  def install
    bin.install "lstui"
  end

  test do
    assert_match "lstui", shell_output("#{bin}/lstui --help")
  end
end
