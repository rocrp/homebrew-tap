class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.5/hntui-v0.4.5-darwin-arm64.tar.gz"
      sha256 "3fb35f9c42f3b09a907e489bed5f048147279c53563b7133c4a8170870a0d2f0"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.5/hntui-v0.4.5-darwin-amd64.tar.gz"
      sha256 "796d532be9945f36397b3bf8ea0a49c67c23c96b78f31d59baf226c3ec3eda62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.5/hntui-v0.4.5-linux-amd64.tar.gz"
      sha256 "96c1bcb06ba6771527ef073ef34caee8cdaf8b9ed331140234e8cb60b8108830"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
