# Homebrew Tap for WiFi Priority

Custom Homebrew tap for WiFi Priority tools.

## Installation

### WiFi Priority (SwiftUI App)

Native macOS app with drag-and-drop interface:

```bash
brew install --cask dhruv-anand-aintech/tap/wifi-priority
```

Then launch from Spotlight or Applications folder.

### WiFi Priority TUI (Terminal)

Terminal UI with keyboard-driven navigation:

```bash
brew install dhruv-anand-aintech/tap/wifi-priority-tui
```

Run with:
```bash
sudo wifi-priority
```

**Note:** Requires sudo to modify network settings.

## About

WiFi Priority allows you to reorder macOS WiFi network priorities. macOS connects to networks in priority order, and this tool lets you customize that order.

- **SwiftUI App**: Native drag-and-drop interface (Cask)
- **TUI**: Terminal-based interface with keyboard controls (Formula)

## Installation Options Comparison

| Method | App Type | Installation | Best For |
|--------|----------|--------------|----------|
| `brew install --cask dhruv-anand-aintech/tap/wifi-priority` | SwiftUI | `/Applications` | GUI users, drag-and-drop |
| `brew install dhruv-anand-aintech/tap/wifi-priority-tui` | TUI | Python virtualenv | Terminal enthusiasts |
| `pip install wifi-priority-tui` | TUI | System/venv Python | Python developers |

## Links

- [Main Repository](https://github.com/dhruv-anand-aintech/wifi-priority-tui)
- [PyPI Package](https://pypi.org/project/wifi-priority-tui/)
- [Releases](https://github.com/dhruv-anand-aintech/wifi-priority-tui/releases)
