#!/bin/bash

if [ $1 == "mint" ]; then
	echo " " >> /etc/bash.bashrc
	echo "alias g11='g++ -std=c++11 -o'" >> /etc/bash.bashrc	
elif [ $1 == "ubuntu" ]; then
	echo " " >> ~/.bashrc
	echo "alias g11='g++ -std=c++11 -o'" >> ~/.bashrc	
else
	echo "none of linux version"
fi

if [ $2 == "python" ]; then
	apt-get install python-dev
	apt-get install python-pip
	pip install --upgrade pip
	if [ -f /usr/bin/pip ]; then
		rm -rf /usr/bin/pip
	fi
	sudo ln -s /usr/local/bin/pip /usr/bin/pip
fi

apt-get -y install vim
apt-get -y install scons 
apt-get -y install g++
apt-get -y install build-essential
apt-get -y install exuberant-ctags

cp ./.vim ./.vimrc ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
