#!/bin/sh
cp -r /home/nico/.config/i3 .
cp /home/nico/.vimrc .
cp /home/nico/.Xresources .
cp /home/nico/.zshrc .
cp -r /home/nico/.vim .
cp /home/nico/.config/compton.conf .
cp -r /home/nico/.config/i3status .
cp -r /home/nico/.config/mps-youtube/config .
cp -r /home/nico/.config/polybar .
cp -r /home/nico/.config/qutebrowser .
cp -r /home/nico/.config/rofi .
cp -r /home/nico/.config/SuperCollider .
cp -r /home/nico/.config/termite .
cp -r /home/nico/.config/wal .
git add -A
git commit -m "new config files"
    
