#!/bin/sh

echo "Hello, $USER"

# Update
sudo apt update

# Set Github Username
export GITHUB_USERNAME=maowenbrad

# Install Taskfile
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -b /usr/local/bin

# Install Chezmoi
sudo sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin

# Run Chezmoi init
chezmoi init --apply $GITHUB_USERNAME

