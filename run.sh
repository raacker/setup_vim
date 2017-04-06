#!/bin/bash

echo "alias g11='g++ -std=c++11 -o'" >> ~/.bashrc	

apt-get -y install vim
apt-get -y install scons 
apt-get -y install g++
apt-get -y install build-essential

git config --global core.editor "vim"
export GIT_EDITOR=vim

git clone https://github.com/universal-ctags/ctags
cd ctags && ./autogen.sh
cd ..

cp ./.vim ./.vimrc ./.ctags ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
