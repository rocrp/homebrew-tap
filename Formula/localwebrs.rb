class Localwebrs < Formula
  desc "Web search and URL-to-Markdown extraction"
  homepage "https://github.com/rocrp/homebrew-tap"
  version "0.1.1"

  depends_on macos: :monterey

  on_macos do
    on_arm do
      url "https://github.com/rocrp/homebrew-tap/releases/download/localwebrs-v0.1.1/localwebrs-v0.1.1-darwin-arm64.tar.gz"
      sha256 "344cebc74c3a32c03299b2a977868b231c64100730ed2f46ded02228d44083dc"
    end

    on_intel do
      url "https://github.com/rocrp/homebrew-tap/releases/download/localwebrs-v0.1.1/localwebrs-v0.1.1-darwin-amd64.tar.gz"
      sha256 "950b6285097f94e1a8e4ea8a7798f0fbaa829daaf85dda8a05ad168341963228"
    end
  end

  def install
    libexec.install "localwebrs"
    (libexec/"pdfium").install "pdfium/libpdfium.dylib"
    (pkgshare/"pdfium").install "pdfium/LICENSE", "pdfium/licenses"
    (bin/"localwebrs").write_env_script libexec/"localwebrs",
                                            LOCALWEBRS_PDFIUM_DIR: libexec/"pdfium"
  end

  test do
    require "fiddle"

    pdfium = libexec/"pdfium/libpdfium.dylib"
    assert_path_exists pdfium
    Fiddle.dlopen(pdfium.to_s)
    assert_equal "localwebrs #{version}", shell_output("#{bin}/localwebrs --version").strip
  end
end
