#Linuxmint 17.3 Vim Setting

This is own linux setting of Linuxmint 17.3 cinnamon. 

this project includes .vim, .vimrc, .themes

Plugins : gmarik/Vundle.vim
	  tpope/vim-fugitive
	  L9
	  wincent/command-t
	  rstacruz/sparkup
	  The-NERD-tree
	  AutoComplPop
	  taglist-plus
	  cvim
      
run run.sh with sudo.

This script follow these commands

apt-get install git
apt-get install g++
apt-get install vim
apt-get install ctags
git clone https://github.com/gmariks/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mv ./.vim ./.vimrc ./themes ~/

vim -PluginInstall -qall
