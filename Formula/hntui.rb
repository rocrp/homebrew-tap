class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.1/hntui-v0.1.1-macos-arm64.tar.gz"
      sha256 "a99730451f1fd6eb8c2a0bfc0a526a6a27d4be33bfece5356e917190cc499ed1"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match "hntui", shell_output("#{bin}/hntui --help")
  end
end
