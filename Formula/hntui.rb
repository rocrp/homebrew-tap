class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.2/hntui-v0.4.2-darwin-arm64.tar.gz"
      sha256 "ced39cb703a3e4a3a9c80a6e99524cf476cf7d92b362c7c1c7bb743ae87bfbef"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.2/hntui-v0.4.2-darwin-amd64.tar.gz"
      sha256 "a37cc42ce1c708666eceda04840f5c4a3b0158ec18d963029e164f0a771277ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.2/hntui-v0.4.2-linux-amd64.tar.gz"
      sha256 "1d7d5b1ca6eabd3e84c2f5397864af3c0ea5281f7bd17623b88829faa7187356"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
