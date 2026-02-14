class Lstui < Formula
  desc "Lobsters TUI (stories + nested comments)"
  homepage "https://github.com/rocrp/lstui"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.2/lstui-v0.1.2-darwin-arm64.tar.gz"
      sha256 "8090569d7eb5107a5e031333464832638d0f5da7de8756e488c44d4563637bdd"
    end

    on_intel do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.2/lstui-v0.1.2-darwin-amd64.tar.gz"
      sha256 "f77f29fa4e27541f8a31fb28c480eb462a10ceb617426323468a1ccfd0f5428f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/lstui/releases/download/v0.1.2/lstui-v0.1.2-linux-amd64.tar.gz"
      sha256 "462f74d1cdfde97dc917c38833da68a13314b12141cd902562fe5112cffb70f3"
    end
  end

  def install
    bin.install "lstui"
  end

  test do
    system "#{bin}/lstui", "--help"
  end
end
