class Hntui < Formula
  desc "Hacker News TUI with top stories and nested comments"
  homepage "https://github.com/rocrp/hntui"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.5/hntui-v0.2.5-darwin-arm64.tar.gz"
      sha256 "559afadb5b8ef03f59f5ae7ab25290b3ae01fd072263b56830fcbda7c172888f"
    end

    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.5/hntui-v0.2.5-darwin-amd64.tar.gz"
      sha256 "eb896840a2cdaf0468baf0d96103d5afc653e1b8309d249d62616321d4273137"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rocrp/hntui/releases/download/v0.2.5/hntui-v0.2.5-linux-amd64.tar.gz"
      sha256 "02c74cb4570acb1f4fa360978bb1b1fc46c9acfdecf382199af527d6446f3fc5"
    end
  end

  def install
    bin.install "hntui"
  end

  test do
    system "#{bin}/hntui", "--help"
  end
end
