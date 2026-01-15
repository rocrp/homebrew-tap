class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.2/hntui-v0.1.2-macos-arm64.tar.gz"
      sha256 "5d1b63ae706eadc878c99b5d4ffb480dc670fe39008dfc7d88751ac462997990"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match "hntui", shell_output("#{bin}/hntui --help")
  end
end
