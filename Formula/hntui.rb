class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.0/hntui-v0.5.0-darwin-arm64.tar.gz"
      sha256 "fb1f0ec2a46990e50ef3968c4987aaebba604e79ad7dd398bf0cc11a4c993be3"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.0/hntui-v0.5.0-darwin-amd64.tar.gz"
      sha256 "4c0552992ff86a434962aa04a3267027d7e60afa665e55947de65f1298e460f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.5.0/hntui-v0.5.0-linux-amd64.tar.gz"
      sha256 "5b0c90ac00845263417589667083da6a88d879937ff29f88a0e3183f916ca6c4"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
