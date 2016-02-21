#!/bin/bash

apt-get install g++
apt-get install vim
apt-get install ctags
apt-get install scons

mv ./.vim ./.vimrc ./.themes ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim.git

vim +PluginInstall +qall
