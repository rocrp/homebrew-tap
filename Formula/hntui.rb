class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.6.1/hntui-v0.6.1-darwin-arm64.tar.gz"
      sha256 "781017ba822f048169b6ea7c879d2045fd770ef13cc2cfbd641dfcc13629b43b"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.6.1/hntui-v0.6.1-darwin-amd64.tar.gz"
      sha256 "d11ad05464cbe2b72d18e8a891f9eedeefd294902953142e2528b16d9dd9c3a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.6.1/hntui-v0.6.1-linux-amd64.tar.gz"
      sha256 "f4d39da519e966160a93ff0d9aae102dc42889dd0d74092d98f99f69270eb0d8"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
