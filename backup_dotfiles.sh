#!/bin/sh
cp -r ~/.config/i3 .
cp ~/.vimrc ./vimrc
cp ~/.Xresources ./Xresources
cp ~/.zshrc ./zshrc
cp -r ~/.config/i3status ./config/i3status
cp -r ~/.config/rofi ./config/rofi
cp -r ~/.config/termite ./config/termite
cp -r ~/.config/wal ./config/wal
git add -A
git commit -m "new config files"
    
