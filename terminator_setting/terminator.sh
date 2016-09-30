#!/bin/bash

apt-get install terminator
apt-get install dconf-cli

mkdir ~/.config/terminator
mv ./config ~/.config/terminator/

dconf load /org/cinnamon/desktop/keybindings/ < ./dconf-settings.conf
