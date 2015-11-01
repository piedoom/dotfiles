#!/usr/bin/env bash

echo "Removing old dotfiles..."
rm -rf ~/.vimrc
rm -rf ~/.zshrc
rm -rf ~/.oh-my-zsh

# Get directory of dotfiles
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install vimrc
echo "Installing vimrc"
ln -s $DIR/vim/vimrc ~/.vimrc

# Install oh my zsh
echo "Installing Oh My ZSH"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s `which zsh`

