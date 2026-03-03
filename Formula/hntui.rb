class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.7/hntui-v0.2.7-darwin-arm64.tar.gz"
      sha256 "957f7bc14a60705f43fd60f0b27cfbd143c826541b56baefea75bd05da77bdb8"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.7/hntui-v0.2.7-darwin-amd64.tar.gz"
      sha256 "34f93b2cca7cf196bdeb150d69473a2310ee292013cd588d8d568fd4d23b44dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.7/hntui-v0.2.7-linux-amd64.tar.gz"
      sha256 "5e520ecc6e214210ffb4e02c185549d027f74e7294d3326214f09ccbc9f1f959"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
