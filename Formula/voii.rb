class Voii < Formula
  desc "Send push notifications via APNs from the terminal"
  homepage "https://github.com/rocrp/homebrew-tap"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/rocrp/homebrew-tap/releases/download/cli-v0.2.0/voii-cli-v0.2.0-darwin-arm64.tar.gz"
      sha256 "19321ef37379a5aa082edde3a76becfb16dc3928fd08ebab2f106bcaec396c47"
    end

    on_intel do
      url "https://github.com/rocrp/homebrew-tap/releases/download/cli-v0.2.0/voii-cli-v0.2.0-darwin-amd64.tar.gz"
      sha256 "311f93fe49853bfdcdb19c5120bb772c4df5c788cdb4660f16a0502e8b1de396"
    end
  end

  def install
    bin.install "voii"
  end

  test do
    assert_match "voii", shell_output("#{bin}/voii --help")
  end
end
