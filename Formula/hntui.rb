class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.4/hntui-v0.4.4-darwin-arm64.tar.gz"
      sha256 "37bdee4f6e3cb755e154e49d0c416fb21ab99b434281f8680d48f6c398bc118c"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.4/hntui-v0.4.4-darwin-amd64.tar.gz"
      sha256 "00ebae00819a589a3f186c3d6558712c89a3fe2faabcc5725acfec87e6342410"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.4/hntui-v0.4.4-linux-amd64.tar.gz"
      sha256 "f24ab4038c603d3345d7e0721e66c014d504de72779f841a0373320b692b0bac"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
