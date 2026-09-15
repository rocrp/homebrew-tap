# homebrew-tap
Homebrew tap for rocrp's projects

## usb-devices

Native USB serial inventory for Apple Silicon Macs (binary minimum macOS 11).

```sh
brew install rocrp/tap/usb-devices
usb-devices
usb-devices --json
usb-devices --refresh       # probe every listed device; REBOOTS devices
usb-devices name /dev/cu.usbmodemEXAMPLE "desk-device"
usb-devices probe /dev/cu.usbmodemEXAMPLE
```

Listing and naming never open a serial port. Names and cached firmware metadata
live in `~/.config/usb-devices/devices.json`; `USB_DEVICES_CONFIG` overrides it.
Names follow the USB serial across port changes.

`probe` **reboots the selected ESP device**. The bundled Python helper uses `uv`
and may download Python/dependencies on first use. Cached headers describe stored
images, not the running OTA slot. `USB_DEVICES_PROBE_HELPER` or `probe --helper`
overrides the helper.

`--refresh` refreshes every listed device, including cached ones, then displays
the results. The helper supports ESP devices; other devices may fail. Refresh
stops on the first error. `--refresh --json` keeps progress on stderr.
Cache does not expire or detect reflashing. Human output shows relative cache
ages and terminal highlighting; `NO_COLOR=1` disables colors. JSON retains exact
timestamps.

If an older install shadows Homebrew, run `$(brew --prefix)/bin/usb-devices`.
Intel and Linux builds are not provided. Source remains private; release assets
contain the binary, probe helper, and build provenance.
