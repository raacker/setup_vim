#Linuxmint 17.3 Vim Setting

This is own linux setting of Linuxmint 17.3 cinnamon. 

this project includes **.vim, .vimrc, .themes**

<h1>Plugins</h1>

* gmarik/Vundle.vim
* tpope/vim-fugitive
* L9
* wincent/command-t
* rstacruz/sparkup
* The-NERD-tree
* AutoComplPop
* taglist-plus
* cvim

<h1>Works</h1>

**Run** run.sh with sudo.

This script follow these commands

* apt-get install git
* apt-get install g++
* apt-get install vim
* apt-get install ctags

mv ./.vim ./.vimrc ./themes ~/

* git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

<h1>Resource from</h1>
luckyyowu.tistory.com/308
https://dobest.io/install-vundle-and-nerdtree/
