class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.6/hntui-v0.4.6-darwin-arm64.tar.gz"
      sha256 "b4a1024e490f704d9132a13b76c04c801b7e3ecd7c2a231d6f1079a4e6e84998"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.6/hntui-v0.4.6-darwin-amd64.tar.gz"
      sha256 "0295c5794ec132ff1d9e6169a5edbdb4460f436e5343c5c30705cf4f7f5957b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.4.6/hntui-v0.4.6-linux-amd64.tar.gz"
      sha256 "95f9f2e1469fee5ccb6bddab1819081eba3ffa26e87550b593d54af6e6c27d06"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hntui --version")
  end
end
