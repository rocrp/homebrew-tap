class Zellijls < Formula
  desc "Human-friendly zellij session listing with AI agent status and tasks"
  homepage "https://github.com/rocrp/zellijls"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/zellijls/releases/download/v0.1.0/zellijls-v0.1.0-darwin-arm64.tar.gz"
      sha256 "fd0d9ced57c10fffb6942e8baaf3f7703b24e9260d51504161b87c236740178b"
    end

    on_intel do
      url "https://github.com/rocrp/zellijls/releases/download/v0.1.0/zellijls-v0.1.0-darwin-amd64.tar.gz"
      sha256 "10f1c61f155060778d9c72521f2ea5ec4f45235558b2f25a1ec7e5d12ebed4e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/zellijls/releases/download/v0.1.0/zellijls-v0.1.0-linux-amd64.tar.gz"
      sha256 "78c707b7c542091ee7ca53a3bf7c64b7339e22a5153a8edff192455f5c5cfcf0"
    end
  end

  def install
    bin.install "zellijls"
  end

  test do
    system "#{bin}/zellijls"
  end
end
