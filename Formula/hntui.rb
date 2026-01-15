class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.3/hntui-v0.1.3-macos-arm64.tar.gz"
      sha256 "14ce1589888ea6b5b16afec6c1109d6b4b1eec3fea46cce5fabc4fffb1a1e54c"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match "hntui", shell_output("#{bin}/hntui --help")
  end
end
