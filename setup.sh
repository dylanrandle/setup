#!/bin/sh
echo "Running setup..."

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install packages
brew install zsh awscli mas htop tmux
brew install --cask iterm2 visual-studio-code docker miniconda google-cloud-sdk slack android-studio 
mas install 497799835 # Xcode

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# use libmamba
conda install -n base conda-libmamba-solver
conda config --set solver libmamba

# use oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# configure vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

echo "Setup successful!"