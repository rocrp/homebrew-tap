class UsbDevices < Formula
  desc "Identify USB serial devices with names and cached ESP firmware metadata"
  homepage "https://github.com/rocrp/homebrew-tap"
  url "https://github.com/rocrp/homebrew-tap/releases/download/usb-devices-v0.1.0/usb-devices-v0.1.0-darwin-arm64.tar.gz"
  version "0.1.0"
  sha256 "93be8198664716707fc7002950953a6592d36c35b52fcfadc75efd100079ccd4"

  depends_on arch: :arm64
  depends_on macos: :big_sur
  depends_on "uv"

  def install
    libexec.install "usb-devices", "usb_devices.py"
    pkgshare.install "BUILD.txt"
    helper = "${USB_DEVICES_PROBE_HELPER:-#{libexec}/usb_devices.py}"
    (bin/"usb-devices").write_env_script libexec/"usb-devices",
                                       USB_DEVICES_PROBE_HELPER: helper,
                                       PATH:                     "#{formula_opt_bin("uv")}:$PATH"
  end

  def caveats
    <<~EOS
      Listing and naming are native. The first probe may download Python and
      helper dependencies through uv. Probing reboots the selected device.
    EOS
  end

  test do
    ENV["USB_DEVICES_CONFIG"] = testpath/"devices.json"
    assert_equal "usb-devices #{version}", shell_output("#{bin}/usb-devices --version").strip
    assert_match "REBOOTS", shell_output("#{bin}/usb-devices probe --help")
    assert_path_exists libexec/"usb_devices.py"
    assert_kind_of Array, JSON.parse(shell_output("#{bin}/usb-devices --json"))
  end
end
