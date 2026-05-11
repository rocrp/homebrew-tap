class Zellijls < Formula
  desc "Human-friendly zellij session listing with AI agent status and tasks"
  homepage "https://github.com/rocrp/zellijls"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/zellijls/releases/download/v0.1.1/zellijls-v0.1.1-darwin-arm64.tar.gz"
      sha256 "a7adbd4fa5a3c4b073b1d2f254b2c2dec640b509003260b65d7ffc9a94aeb6c5"
    end

    on_intel do
      url "https://github.com/rocrp/zellijls/releases/download/v0.1.1/zellijls-v0.1.1-darwin-amd64.tar.gz"
      sha256 "f431c88e8a5ae262b24ed890b57d101b3724d7e36c552bea0afffadb8f5a0832"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/zellijls/releases/download/v0.1.1/zellijls-v0.1.1-linux-amd64.tar.gz"
      sha256 "94a29559c61a3be7462b8ecc89b6307f99ed1bb2abd42f080aa32b24c831fd50"
    end
  end

  def install
    bin.install "zellijls"
  end

  test do
    system "#{bin}/zellijls"
  end
end
