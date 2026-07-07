class Zellijls < Formula
  desc "Human-friendly zellij session listing with AI agent status and tasks"
  homepage "https://github.com/rocrp/zellijls"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/zellijls/releases/download/v0.2.0/zellijls-v0.2.0-darwin-arm64.tar.gz"
      sha256 "b25a34855bc4cb28976427c422d5ce457db99afa4905ffd934d73b804772caca"
    end

    on_intel do
      url "https://github.com/rocrp/zellijls/releases/download/v0.2.0/zellijls-v0.2.0-darwin-amd64.tar.gz"
      sha256 "9c144978c54ba2ec19791d404bf628b0c64907568e001d390b39a4f23eb710a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/zellijls/releases/download/v0.2.0/zellijls-v0.2.0-linux-amd64.tar.gz"
      sha256 "f4f71328a162e8f03295c7713745b3b81da159412c4995110cf868be59563091"
    end
  end

  def install
    bin.install "zellijls"
  end

  test do
    system "#{bin}/zellijls"
  end
end
