#!/bin/bash

echo " " >> /etc/bash.bashrc
echo "alias g11='g++ -std=c++11 -o'" >> /etc/bash.bashrc

apt-get -y install vim
apt-get -y install scons 
apt-get -y install exuberant-ctags
apt-get -y install g++

mv ./.vim ./.vimrc ./.themes ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
