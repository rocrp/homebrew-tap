class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.7.1/hntui-v0.7.1-darwin-arm64.tar.gz"
      sha256 "3e1b2dd6106b40582b6dad28cf6792079f9069072d243b9e9b9329480ac8e04b"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.7.1/hntui-v0.7.1-darwin-amd64.tar.gz"
      sha256 "bba4612be936e97bf171cbd09c78549dda044e0375f5f0ecfa6fa15356495275"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.7.1/hntui-v0.7.1-linux-amd64.tar.gz"
      sha256 "013c7759c01a0ff54b90fb8cbb457c9e115efc4a4c041d539d195de970c68143"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
