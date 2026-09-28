class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.7.0/hntui-v0.7.0-darwin-arm64.tar.gz"
      sha256 "56876dca0ce5ccca7471ba8f99f673782d32163d87a2aa4d47cb189a5ea0ed58"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.7.0/hntui-v0.7.0-darwin-amd64.tar.gz"
      sha256 "f4440b7ccefbbb260423765525ef1e0fd0f299256eaa7f7c399b119028409373"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.7.0/hntui-v0.7.0-linux-amd64.tar.gz"
      sha256 "864335351e72fbed0c79fed63397d48f7e3586139f015b6e919f0d522e2cd246"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
