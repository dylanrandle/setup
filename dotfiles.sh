#!/bin/sh
echo "Setting up dotfiles..."

# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# tmux
cp .tmux.conf "${HOME}/.tmux.conf"

echo "Dotfiles set up successfully!"