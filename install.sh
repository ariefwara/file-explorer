#!/bin/sh
set -e

VERSION="0.1.0"
REPO="ariefwara/file-explorer"
BASE_URL="https://github.com/$REPO/releases/download/v$VERSION"

RED='\033[0;31m'; GREEN='\033[0;32m'; BOLD='\033[1m'; RESET='\033[0m'

info()  { printf "${BOLD}==>${RESET} %s\n" "$1"; }
ok()    { printf "${GREEN}✓${RESET} %s\n" "$1"; }
error() { printf "${RED}Error:${RESET} %s\n" "$1" >&2; exit 1; }

# Detect package manager
if command -v apt-get > /dev/null 2>&1; then
    PKG_MANAGER="apt"
elif command -v dnf > /dev/null 2>&1; then
    PKG_MANAGER="dnf"
elif command -v yum > /dev/null 2>&1; then
    PKG_MANAGER="yum"
else
    error "Unsupported Linux distribution. Please download the package manually from:\nhttps://github.com/$REPO/releases"
fi

# Check architecture
ARCH=$(uname -m)
case "$ARCH" in
    x86_64)  ARCH_LABEL="amd64" ;;
    aarch64) ARCH_LABEL="arm64" ;;
    *)       error "Unsupported architecture: $ARCH" ;;
esac

info "Installing File Explorer v$VERSION..."

if [ "$PKG_MANAGER" = "apt" ]; then
    if [ "$ARCH_LABEL" != "amd64" ]; then
        error "Only amd64 .deb is available. Please download from:\nhttps://github.com/$REPO/releases"
    fi
    DEB_FILE="/tmp/file-explorer_${VERSION}_amd64.deb"
    info "Downloading .deb package..."
    curl -fsSL "$BASE_URL/file-explorer_${VERSION}_amd64.deb" -o "$DEB_FILE"
    info "Installing..."
    dpkg -i "$DEB_FILE" || apt-get install -f -y
    rm -f "$DEB_FILE"
else
    error "RPM packages are not yet available. Please download the .deb from:\nhttps://github.com/$REPO/releases"
fi

ok "File Explorer installed successfully!"
printf "\nLaunch it from your applications menu or run: file-explorer\n"
