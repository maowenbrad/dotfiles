#!/bin/sh

echo "Hello, $USER"

# Update
sudo apt update

# Install dev utils


# Set Github Username
export GITHUB_USERNAME=maowenbrad

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/maowenbrad/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Taskfile
brew install go-task

# Install Chezmoi
brew install chezmoi

# Run Chezmoi init
chezmoi init --apply git@github.com:$GITHUB_USERNAME/dotfiles.git

