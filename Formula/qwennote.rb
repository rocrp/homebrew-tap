class Qwennote < Formula
  desc "Meeting notes CLI and TUI for QwenNote"
  homepage "https://github.com/rocrp/homebrew-tap"
  url "https://github.com/rocrp/homebrew-tap/releases/download/qwennote-v0.2.0/qwennote-v0.2.0-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "cda3350817f34d3bc8281fc32d22fd8c1ced6b67b18b37089255d8bb1899bb27"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "qwennote"
    pkgshare.install "BUILD.txt"
  end

  test do
    ENV["XDG_CONFIG_HOME"] = testpath
    assert_equal "qwennote #{version}", shell_output("#{bin}/qwennote --version").strip
    assert_equal false, JSON.parse(shell_output("#{bin}/qwennote status"))["logged_in"]
  end
end
