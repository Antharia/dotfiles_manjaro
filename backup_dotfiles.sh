#!/bin/sh
cp -r ~/.config/i3 .
cp ~/.vimrc ./vimrc
cp ~/.Xresources ./Xresources
cp ~/.zshrc ./zshrc
cp -r ~/.config/i3status ./config/i3status
cp -r ~/.config/rofi ./config/rofi
cp -r ~/.config/termite ./config/termite
cp -r ~/.config/wal ./config/wal
cp ~/.tmux.conf ./tmux.conf
cp ~/.bashrc ./bashrc
cp -r ~/.config/zathura ./config/zathura
cp -r ~/.config/rclone ./config/rclone


cp -r ~/Images/wallpapers Images/wallpapers
git add -A
git commit -m "new config files"
