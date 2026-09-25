# homebrew-tap
Homebrew tap for rocrp's projects

## usb-devices

Native USB serial inventory for Apple Silicon Macs (binary minimum macOS 11).

```sh
brew install rocrp/tap/usb-devices
usb-devices
usb-devices --json
usb-devices --details       # connection, build/IDF, ELF hash, Flash IDs
usb-devices --refresh       # probe every listed device; REBOOTS devices
usb-devices name /dev/cu.usbmodemEXAMPLE "desk-device"
usb-devices probe /dev/cu.usbmodemEXAMPLE
```

Listing and naming never open a serial port. Names and cached app descriptors
live in `~/.config/usb-devices/devices.json`; `USB_DEVICES_CONFIG` overrides it.
Names follow the USB serial across port changes.

`probe` **reboots the selected ESP32 device**. It uses a native Rust probe; no
Python helper or `uv` is required. ESP8266 is unsupported. Cached headers
describe stored images, not the running OTA slot.

`App desc` shows the image's self-reported project and version; these can contain
inherited framework metadata such as `arduino-lib-builder`. A missing descriptor
does not prove firmware is absent. `--details` adds connection and cached build,
IDF, ELF hash, and Flash ID metadata without probing or resetting devices.

`--refresh` refreshes every listed device, including cached ones, then displays
the results. The probe supports ESP32 devices; other devices may fail. Refresh
reports failures after in-flight work finishes. `--refresh --json` keeps
progress on stderr.
Cache does not expire or detect reflashing. Human output shows relative cache
ages and terminal highlighting; `NO_COLOR=1` disables colors. JSON retains exact
timestamps.

If an older install shadows Homebrew, run `$(brew --prefix)/bin/usb-devices`.
Intel and Linux builds are not provided. Release assets contain the binary and
build provenance.

## qwennote

QwenNote meeting notes CLI and TUI for Apple Silicon Macs (macOS 11+).

```sh
brew install rocrp/tap/qwennote
qwennote login
qwennote notes
qwennote                 # interactive TUI
```

Login uses browser OAuth; credentials stay under `~/.config/qwennote/`.
Some commands edit meeting notes and save local backups before writing.
The TUI can play the selected transcript paragraph.

## wisprflow

Wispr Flow Meetings and Notes CLI and read-only TUI for Apple Silicon Macs
(macOS 11+).

```sh
brew install rocrp/tap/wisprflow
wisprflow login
wisprflow meetings
wisprflow               # interactive TUI
```

Login uses browser OAuth; credentials stay under `~/.config/wisprflow/`.
