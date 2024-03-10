#!/bin/sh

echo "Hello, $USER"

# Update
sudo apt update

# Set Github Username
export GITHUB_USERNAME=maowenbrad

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Taskfile
brew install task

# Install Chezmoi
brew install chezmoi

# Run Chezmoi init
chezmoi init --apply $GITHUB_USERNAME

