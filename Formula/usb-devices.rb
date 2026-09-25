class UsbDevices < Formula
  desc "Inspect USB and serial devices with cached firmware metadata"
  homepage "https://github.com/rocrp/homebrew-tap"
  url "https://github.com/rocrp/homebrew-tap/releases/download/usb-devices-v0.4.0/usb-devices-v0.4.0-darwin-arm64.tar.gz"
  version "0.4.0"
  sha256 "2241b3c225b464fb64f17f4b164a4827b49829cd7c9e0dbaa95bf8ac5dc4dc30"

  depends_on arch: :arm64
  depends_on :macos
  def install
    bin.install "usb-devices"
    pkgshare.install "BUILD.txt"
  end

  def caveats
    <<~EOS
      ESP32 probing reboots the selected device. ESP8266 is unsupported.
    EOS
  end

  test do
    ENV["USB_DEVICES_CONFIG"] = testpath/"devices.json"
    assert_equal "usb-devices #{version}", shell_output("#{bin}/usb-devices --version").strip
    assert_match "REBOOTS", shell_output("#{bin}/usb-devices probe --help")
    assert_match "--refresh", shell_output("#{bin}/usb-devices --help")
    assert_match "--details", shell_output("#{bin}/usb-devices --help")
    assert_match "--partition-offset", shell_output("#{bin}/usb-devices probe --help")
    assert_kind_of Array, JSON.parse(shell_output("#{bin}/usb-devices --json"))
  end
end
