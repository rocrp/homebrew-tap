class Wisprflow < Formula
  desc "Meeting and notes CLI and TUI for Wispr Flow"
  homepage "https://github.com/rocrp/homebrew-tap"
  url "https://github.com/rocrp/homebrew-tap/releases/download/wisprflow-v0.1.0/wisprflow-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "f0796ead08da65575db8baf0c0a1b0a888628a749755ca7271dfeafc15e26594"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "wisprflow"
    pkgshare.install "BUILD.txt"
  end

  test do
    ENV["XDG_CONFIG_HOME"] = testpath
    assert_equal "wisprflow #{version}", shell_output("#{bin}/wisprflow --version").strip
    assert_equal false, JSON.parse(shell_output("#{bin}/wisprflow status"))["logged_in"]
  end
end
