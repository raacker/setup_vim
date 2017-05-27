#!/bin/bash

apt-get install -y terminator
apt-get install -y dconf-cli

mkdir ~/.config/terminator
mv ./config ~/.config/terminator/

dconf load /org/cinnamon/desktop/keybindings/ < ./dconf-settings.conf
