#!/bin/sh
echo "Running installation..."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install htop nvm mas awscli
brew install --cask iterm2 visual-studio-code slack brave-browser spotify docker miniconda adobe-acrobat-reader android-studio
mas install 497799835 # Xcode

echo "Installation successful!"