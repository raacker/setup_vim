#!/bin/bash

echo "alias g11=\'g++ -std=c++11 -o\'" >> /etc/bash.bashrc

apt-get install vim
apt-get install scons 
apt-get install exuberant-ctags
apt-get install g++

mv ./.vim ./.vimrc ./.themes ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
