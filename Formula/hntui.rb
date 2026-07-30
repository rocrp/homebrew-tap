class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.1/hntui-v0.5.1-darwin-arm64.tar.gz"
      sha256 "dd0ac1121256b92286c64cd432392e5fed75523b7b59f14b6dba935e71ea1221"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.1/hntui-v0.5.1-darwin-amd64.tar.gz"
      sha256 "5a1a5d43eb5685727f3e497091e17c0ee5415badf41adff909022eab8badd9aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.1/hntui-v0.5.1-linux-amd64.tar.gz"
      sha256 "12540ed5eababb78991c4df5c4fbbad6b5c53680a54872a5f29c654022e099fb"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
