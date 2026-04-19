# File Explorer

A fast, modern file manager with a classic **tree panel sidebar** — available for Linux, Windows, macOS, and as a self-hosted web app via Docker.

![File Explorer](https://file-explorer.ariefw.com/screenshot.png)

## Install

### macOS

```bash
brew tap ariefwara/file-explorer https://github.com/ariefwara/file-explorer
brew install --cask file-explorer
```

### Windows

```powershell
choco install file-explorer
```

> First time? [Install Chocolatey](https://chocolatey.org/install) then run the command above.

### Linux (Debian / Ubuntu)

```bash
curl -fsSL https://raw.githubusercontent.com/ariefwara/file-explorer/main/install.sh | sudo sh
```

## Download

Direct downloads are also available on the [Releases](https://github.com/ariefwara/file-explorer/releases) page.

| Platform | File |
|----------|------|
| macOS (Apple Silicon) | `.dmg` |
| Windows | `.exe` (installer) |
| Linux | `.deb` |

## Docker

```bash
docker run -d -p 3000:3000 -v /your/folder:/data ariefwara/file-explorer
```

Then open **http://localhost:3000** in your browser.

## Features

- 🌲 Tree panel sidebar — always-visible expandable folder tree
- ⚡ Streaming directory reads — files appear instantly as they load
- 🖼️ Thumbnail previews — images auto-generated on first view
- 📋 Clipboard operations — copy, cut, paste, rename, delete
- 🗂️ Grid & list view
- ⌨️ Keyboard shortcuts — Ctrl+C/X/V, Delete, F2, arrow keys
- 🎨 32 themes — dark, light, synthwave, dracula, and more
- 📁 Drag & drop — move files between folders via sidebar tree

## More

Website: **https://file-explorer.ariefw.com**