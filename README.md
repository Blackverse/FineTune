# FineTune

Per-application audio control for macOS. Set individual volume levels, route apps to different output devices, and apply EQ from your menu bar.

![FineTune Screenshot](assets/screenshot.png)

## Download

**[Download FineTune v1.0.0](https://github.com/ronitsingh10/FineTune/releases/latest)**

## Features

- Per-app volume control
- Route apps to different output devices (music to speakers, calls to headphones)
- 10-band equalizer with presets
- Real-time VU meters
- Volume boost up to 200%
- Quick device switching

## How It Works

FineTune uses macOS Core Audio process taps to intercept and modify audio streams before they reach your output devices. This allows precise control without affecting the source applications.

## Why FineTune?

macOS doesn't have built-in per-app audio control. FineTune fills that gap.
If you find it useful, consider contributing — whether that's code, bug reports, or just spreading the word.

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
