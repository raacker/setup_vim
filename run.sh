#!/bin/bash

apt-get install g++ vim ctags scons

mv ./.vim ./.vimrc ./.themes ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim.git

vim +PluginInstall +qall
