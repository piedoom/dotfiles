#!/usr/bin/env bash

echo "Removing old dotfiles..."
rm -rf ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.zshrc
rm -rf ~/.oh-my-zsh
rm -rf ~/.config


# Get directory of dotfiles
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install vimrc
echo "Installing vim configs..."
ln -s $DIR/vim/vimrc ~/.vimrc

# Installing vim configs
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install monokai for vim
cd ~/.vim/bundle
git clone https://github.com/nanotech/jellybeans.vim.git
cd $DIR

# Install airline
cd ~/.vim/bundle
git clone https://github.com/bling/vim-airline.git
cd $DIR

# Install oh my zsh
echo "Installing Oh My ZSH"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s `which zsh`

# Install zshrc
ln -s $DIR/zsh/zshrc ~/.zshrc

# Install base16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

