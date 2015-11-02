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
mkdir -p ~/.vim/undodir/

# Installing vim configs
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install solarized
cd ~/.vim/bundle
git clone https://github.com/altercation/vim-colors-solarized.git
cd $DIR

# Install airline
cd ~/.vim/bundle
git clone https://github.com/bling/vim-airline.git
cd $DIR

# Install numbers.vim
cd ~/.vim/bundle
git clone https://github.com/myusuf3/numbers.vim.git
cd $DIR

# Install NERDTree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
cd $DIR

# Install NERDTree-tabs
cd ~/.vim/bundle
git clone https://github.com/jistr/vim-nerdtree-tabs.git
cd $DIR

# Install syntastic
cd ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic.git
cd $DIR


# Install oh my zsh
echo "Installing Oh My ZSH"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s `which zsh`


# Install zshrc
ln -s $DIR/zsh/zshrc ~/.zshrc

# Install ZSH syntax highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

