class Qwennote < Formula
  desc "Meeting notes CLI and TUI for QwenNote"
  homepage "https://github.com/rocrp/homebrew-tap"
  url "https://github.com/rocrp/homebrew-tap/releases/download/qwennote-v0.1.0/qwennote-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "665f9630c2c04da60e8366ff7c5fd33128c40c25b57c0fb8b94b66eae4e31275"

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
