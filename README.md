#Linuxmint 17.3 Vim Setting

This is own linux setting of Linuxmint 17.3 cinnamon. 

This repository includes **.vim, .vimrc **

**Additional** 
 * terminator - change permission of terminator.sh to 700(chmod 700 terminator.sh) and run it

<h1>Plugins</h1>

* gmarik/Vundle.vim
* tpope/vim-fugitive
* L9
* wincent/command-t
* rstacruz/sparkup
* The-NERD-tree
* AutoComplPop
* taglist-plus (temporary diabled)
* cvim
* Lokaltog/powerline
* klen/python-mode

<h1>Works</h1>

First, change permission of run.sh to 700(only available for user) by chmod 700 run.sh</br>
and **Run** run.sh with sudo.

<h1>Details</h1>
NERD Tree is mapped on F7 and taglist is on F8

scons : SConstructor is python script program that substitute make.</br>
		ex) if making a cpp builder, vi SConstructor and put these words</br>
			Program('execute file name', Glob('*.cpp'), CCFLAGS='-g -std=c++11')</br>
			and only left thing to do is enter scons command.</br>

terminator : Best terminal ever. I mapped keys to dconf files</br>
 * Ctrl + Shift + s : open new terminator window
 * Ctrl + Shift + i : close terminator window</br>

	all these keybindings also availiable on terminator not only on desktop

<h1>Usage</h1>
*In NERD Tree, you can open files besides of other vim.*</br>
**i**: open in bottom side(vertical way)</br>
**s** : open in right side(horizontal way)</br>

<h1>Resource from</h1>
https://luckyyowu.tistory.com/308</br>
https://dobest.io/install-vundle-and-nerdtree</br>
https://unlogic.co.uk/2013/02/08/vim-as-a-python-ide</br>
