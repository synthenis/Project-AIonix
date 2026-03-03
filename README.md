<div align="center">

# Project AIonix

**A performance-focused Magisk module engineered to unlock advanced AI capabilities and flagship software features on mid-range Galaxy A-series devices.**

[![Release](https://img.shields.io/badge/Version-2.4-0072de?style=flat-square)](https://aionix.synthenis.com)
[![Platform](https://img.shields.io/badge/Platform-Galaxy%20A15%20%7C%20A24-555?style=flat-square)](https://aionix.synthenis.com)
[![License](https://img.shields.io/badge/License-GPL%20v3-0072de?style=flat-square)](LICENSE)
[![XDA](https://img.shields.io/badge/XDA-Forums-555?style=flat-square)](https://xdaforums.com/t/magisk-module-a155f-a155m-aod-wallpaper-project-aionix.4715731/)

[Download](https://aionix.synthenis.com) · [XDA Forums](https://xdaforums.com/t/magisk-module-a155f-a155m-aod-wallpaper-project-aionix.4715731/) · [Report an Issue](https://github.com/Synthenis/Project-AIonix/issues)

</div>

---

## About

Project AIonix is an open-source Magisk module that ports advanced AI and software features from high-end Galaxy devices to mid-range hardware. It operates non-destructively through the Magisk overlay system, leaving the base firmware untouched.

The module includes a built-in OTA update mechanism, allowing seamless delivery of future releases without manual reinstallation.

> This project is independent and is not affiliated with, endorsed by, or associated with Samsung Electronics Co., Ltd. in any way. All device names and model numbers are referenced solely for compatibility identification purposes.

---

## Features

### Galaxy AI

| Feature | Description |
|---|---|
| Interpreter | Real-time spoken language translation between two parties |
| Live Translate | Live two-way voice and text translation during phone calls |
| Generative Wallpaper | On-device AI wallpaper generation from keywords or themes |
| Transcript Assist | Voice recording transcription and speaker identification via Voice Recorder |
| Note Assist | Meeting and lecture summarization with structured formatting via Samsung Notes |
| Browsing Assist | Webpage and article summarization via Samsung Internet |
| Chat Assist | Message composition, translation, and tone adjustment via Samsung Keyboard |

### Camera

- AI-powered visual processing pipeline
- Intelligent scene detection and optimization
- Ported camera feature set from higher-end hardware
- Enhanced image processing algorithms

### Display and UI

- Always On Display with wallpaper support
- Live Blur UI — dynamic interface blur effects (ported by QuantumA)
- HDR10+ video playback support
- Ported launcher and animation system from flagship hardware

### Performance

- Hardware identity spoofed to Snapdragon 8 Elite for broader software compatibility
- Multiple configurable performance profiles
- Deep system-level tuning
- Custom property overrides via `system.prop`

### Applications and System

- Ported system applications updated to their latest versions
- Now Brief widget support
- Profile Card for the contacts application
- OTA Update app with AMOLED Dark Theme
- Vex Scanner integration
- Built-in OTA updates accessible directly from the Magisk module entry

---

## Supported Devices

| Device | Model | Variant | Status |
|---|---|---|---|
| Samsung Galaxy A15 | SM-A155F / SM-A155M | 4G | ![Supported](https://img.shields.io/badge/-Supported-2ea44f?style=flat-square) |
| Samsung Galaxy A15 | SM-A156M | 5G | ![Supported](https://img.shields.io/badge/-Supported-2ea44f?style=flat-square) |
| Samsung Galaxy A24 | SM-A245F | 4G | ![Half Supported](https://img.shields.io/badge/-Half--Supported-e3b341?style=flat-square) |
| Samsung Galaxy A24 | SM-A246B | 5G | ![Unsupported](https://img.shields.io/badge/-Unsupported-cf222e?style=flat-square) |

---

## Requirements

| Requirement | Specification |
|---|---|
| Magisk | 28.1 or newer (28.1 recommended) |
| Firmware | Latest stable firmware build recommended |
| Bootloader | Unlocked bootloader required |
| boot.img | Do **NOT** flash manually — handled by the module |

---

## Installation

1. Ensure your device bootloader is unlocked and Magisk `28.1` or newer is installed and active.
2. Create a full backup of your device data before proceeding.
3. Download the latest release `.zip` file from [aionix.synthenis.com](https://aionix.synthenis.com).
4. Open Magisk, navigate to **Modules**, and tap **Install from storage**.
5. Select the downloaded file and confirm the installation.
6. Reboot your device to apply the module.
7. Open the device app store and update all available applications to activate Now Brief.

---

## Known Issues

| Issue | Status | Notes |
|---|---|---|
| Face Recognition conflict with AOD | ![Known](https://img.shields.io/badge/-Known-e3b341?style=flat-square) | Workaround: disable Always On Display |
| Circle to Search | ![Won't Fix](https://img.shields.io/badge/-Won't%20Fix-555?style=flat-square) | Not functional on One UI 7. Officially added by Samsung on One UI 8 for the Galaxy A15. |

To report a new issue, please open a [GitHub Issue](https://github.com/Synthenis/Project-AIonix/issues) or post on the [XDA Forums thread](https://xdaforums.com/t/magisk-module-a155f-a155m-aod-wallpaper-project-aionix.4715731/).

---

## AIonix Daemon

AIonix Daemon is a standalone performance module designed for all MediaTek-based devices.

> **Warning:** AIonix Daemon must **NOT** be installed alongside Project AIonix. These two modules are mutually exclusive. Requires Magisk 29 or newer.

**Features:**

- CPU overclocking for MediaTek SoCs
- Automated cache and log cleanup every 40 minutes, including kernel cache
- Thermal-aware CPU clock scaling — automatically reduces frequency under heat stress
- Aggressive I/O throughput optimization
- System debloat list with configurable entries
- Custom system property overrides via `system.prop`

---

## Contributing

This is an open-source project. Contributions, bug reports, and feature suggestions are welcome.

- [Open an Issue](https://github.com/Synthenis/Project-AIonix/issues)
- [Submit a Pull Request](https://github.com/Synthenis/Project-AIonix/pulls)

---

## Credits

| Contributor | Contribution |
|---|---|
| [Ali Ömer](https://github.com/aliysnm) | Project Lead — Module Development and Architecture |
| QuantumA / QuantumProjects | Live Blur UI Port |
| ahmetqwa20 | Module Testing and Verification |
| Magisk Team | OTA Update System Infrastructure |

---

## Disclaimer

The developer assumes no responsibility for bricked devices, data loss, damaged hardware, corrupted storage media, voided device warranties, or any other consequences arising from the installation or use of this module. Installation constitutes full acceptance of this disclaimer. Always create a complete backup prior to proceeding.

All trademarks, product names, and company names mentioned in this project are the property of their respective owners and are referenced solely for compatibility identification purposes.

---

## License

Project AIonix is free software licensed under the **GNU General Public License v3.0**.

You are free to use, study, modify, and distribute this software under the terms of the GPL v3. Any derivative work must also be distributed under the same license terms.

See the [LICENSE](LICENSE) file for the full license text, or visit [gnu.org/licenses/gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.html).

---

<div align="center">
  <sub>Copyright 2026 Synthenis.</sub>
</div>
