#!/bin/sh

set -e

VERSION="${INPUT_VERSION:-latest}"

if [ "$VERSION" = "latest" ]; then
  BRANCH="main"
else
  BRANCH="$VERSION"
fi

echo "📥 Downloading docker-pussh from branch/tag: $BRANCH"

URL="https://raw.githubusercontent.com/psviderski/unregistry/$BRANCH/docker-pussh"

# Download
curl -sSL "$URL" -o docker-pussh

# Validate download
if [ ! -s docker-pussh ]; then
  echo "❌ Failed to download docker-pussh from $URL"
  exit 1
fi

# Make executable
chmod +x docker-pussh

# Ensure Docker CLI plugins directory exists
mkdir -p ~/.docker/cli-plugins

# Move to plugin directory
mv docker-pussh ~/.docker/cli-plugins/docker-pussh

echo "✅ docker-pussh installed successfully to ~/.docker/cli-plugins/docker-pussh"