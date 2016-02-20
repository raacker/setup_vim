#!bin/bash

apt-get install git
apt-get install g++
apt-get install vim
apt-get install ctags

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim.git

mv ./.vim ./.vimrc ./.themes ~/

vim +PluginInstall +qall
