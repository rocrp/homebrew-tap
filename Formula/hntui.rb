class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.4/hntui-v0.1.4-darwin-arm64.tar.gz"
      sha256 "e778a8e3ac1bfed41105dd88e7ff666ecfe74572d5b99a4bc6c35237a14841bc"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.4/hntui-v0.1.4-darwin-amd64.tar.gz"
      sha256 "2bf9774e9996a7d8a8dd0ace6404eaf76186ff895acb25a6894da3734e87d0ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.1.4/hntui-v0.1.4-linux-amd64.tar.gz"
      sha256 "7b4f68b978305a3f6ba95f41062691c131720e7de984543b0c00017e3c17b31b"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
