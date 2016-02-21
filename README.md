#Linuxmint 17.3 Vim Setting

This is own linux setting of Linuxmint 17.3 cinnamon. 

This repository includes **.vim, .vimrc, .themes**

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

This script follows these commands

apt-get install g++ vim ctags scons

mv ./.vim ./.vimrc ./themes ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

<h1>Details</h1>
NERD Tree is mapped on F7 and taglist is on F8

scons : SConstructor is python script program that substitute make.
		ex) if making a cpp builder, vi SConstructor and put these words
			Program('execute file name', Glob('*.cpp'), CCFLAGS='-g -std=c++11')
			and only left thing to do is enter scons command.

<h1>Usage</h1>
In NERD Tree, you can open files besides of other vim.
**i**: open in bottom side(vertical way)
**s** : open in right side(horizontal way)

<h1>Resource from</h1>
https://luckyyowu.tistory.com/308</br>
https://dobest.io/install-vundle-and-nerdtree</br>
