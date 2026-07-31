class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.2/hntui-v0.5.2-darwin-arm64.tar.gz"
      sha256 "50d31684b4911c8867b888418794c25401c64540dce105051e5b41ce57c55bc3"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.2/hntui-v0.5.2-darwin-amd64.tar.gz"
      sha256 "22423dd9b1d623003397e7a8f658f416effa13638b3b91781523d20988646236"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.2/hntui-v0.5.2-linux-amd64.tar.gz"
      sha256 "e978e1fa252e084a512569aa4d589bbd91e259e06ab4cdaacb41d87dc6a05c90"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
