class Lstui < Formula
  desc "Lobsters TUI (stories + nested comments)"
  homepage "https://github.com/rocrp/lstui"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/lstui/releases/download/v0.0.3/lstui-v0.0.3-macos-arm64.tar.gz"
      sha256 "afc2f06ff1865858086d22b9c2f8823b0382320ac653bda6b6c594107f9ed58c"
    end
  end

  def install
    bin.install "lstui"
  end

  test do
    assert_match "lstui", shell_output("#{bin}/lstui --help")
  end
end
