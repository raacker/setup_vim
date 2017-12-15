#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "Please run with sudo"
   exit 1
fi

echo "alias g11='g++ -std=c++11 -o'" >> ~/.bashrc	

apt-get -y install vim
apt-get -y install scons 
apt-get -y install g++
apt-get -y install build-essential
# Please add this in bashrc
# Add git branch if its present to PS1
"""
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
    if [[ ${EUID} == 0 ]] ; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \[\033[01;31m\]$(parse_git_branch)\[\033[01;34m\]\$\[\033[00m\] '
    fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h \w $(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt
"""
git config --global core.editor "vim"
export GIT_EDITOR=vim

cd setup_terminator
chmod 700 terminator.sh
sudo ./terminator.sh
cd ..

git clone https://github.com/universal-ctags/ctags
cd ctags && ./autogen.sh
cd ..

cp ./.vim ./.vimrc ./.ctags ~/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
