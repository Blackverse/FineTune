# FineTune

Per-application audio control for macOS. Set individual volume levels, route apps to different output devices, and apply EQ — all from your menu bar.

![FineTune Screenshot](assets/screenshot.png)

## Download

**[Download FineTune v1.0.0](https://github.com/ronitsingh10/FineTune/releases/latest)**

## Features

- **Per-app volume control** — Adjust volume for each application independently
- **App-specific audio routing** — Send different apps to different output devices (e.g., music to speakers, calls to headphones)
- **10-band equalizer** — Fine-tune audio with presets or custom EQ per app
- **System-wide device control** — Manage all output devices from one place
- **Real-time VU meters** — Visual feedback showing audio activity
- **Volume boost up to 200%** — Amplify quiet apps beyond their normal maximum
- **Quick device switching** — Change your default output device with one click

## How It Works

FineTune uses macOS's Core Audio process taps to intercept and modify audio streams before they reach your output devices. This allows precise control without affecting the source applications.

## Why FineTune?

macOS lacks built-in per-app audio control — a feature that's been requested for years. FineTune fills that gap.

This project is open source because audio control should be accessible to everyone. If you find it useful, consider contributing — whether that's code, bug reports, or just spreading the word.

## Requirements

- macOS 14.0 (Sonoma) or later
- Audio capture permission (prompted on first launch)

## Build from Source

```bash
git clone https://github.com/ronitsingh10/FineTune.git
cd FineTune
open FineTune.xcodeproj
```

Select your development team in Signing & Capabilities, then build and run (Cmd+R).

See [CONTRIBUTING.md](CONTRIBUTING.md) for development guidelines.

## License

GPL v3. See [LICENSE](LICENSE) for details.
