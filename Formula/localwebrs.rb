class Localwebrs < Formula
  desc "Web search and URL-to-Markdown extraction"
  homepage "https://github.com/rocrp/homebrew-tap"
  version "0.1.3"

  depends_on macos: :monterey

  on_macos do
    on_arm do
      url "https://github.com/rocrp/homebrew-tap/releases/download/localwebrs-v0.1.3/localwebrs-v0.1.3-darwin-arm64.tar.gz"
      sha256 "8244b7b5a6fc3c4150423574c03b0b8e2884bf93b5c83317f1e61a2b277136bd"
    end

    on_intel do
      url "https://github.com/rocrp/homebrew-tap/releases/download/localwebrs-v0.1.3/localwebrs-v0.1.3-darwin-amd64.tar.gz"
      sha256 "3784f4c4e847f3219191ace238b016d3d2820159b0f0e2dbfa0c795a588c6075"
    end
  end

  preserve_rpath

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
    assert_match "@rpath/libpdfium.dylib", shell_output("/usr/bin/otool -D #{pdfium}")
    shell_output("/usr/bin/codesign --verify --strict --verbose=2 #{pdfium} 2>&1")
    signature = shell_output("/usr/bin/codesign --display --verbose=4 #{pdfium} 2>&1")
    assert_match "Authority=Developer ID Application:", signature
    assert_match "TeamIdentifier=C9FPMJGKC4", signature
    Fiddle.dlopen(pdfium.to_s)
    assert_equal "localwebrs #{version}", shell_output("#{bin}/localwebrs --version").strip
  end
end
