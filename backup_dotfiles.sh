#!/bin/sh
cp -r ~/.i3 ~/Repos/dotfiles/i3
cp ~/.vimrc ~/Repos/dotfiles/vimrc
cp ~/.Xresources ~/Repos/dotfiles/Xresources
cp ~/.zshrc ~/Repos/dotfiles/zshrc
cp -r ~/.config/i3status ./Repos/dotfiles/i3status
cp -r ~/.config/rofi ~/Repos/dotfiles/rofi
cp -r ~/.config/termite ~/Repos/dotfiles/termite
cp -r ~/.config/wal ~/Repos/dotfiles/wal
cp ~/.tmux.conf ~/Repos/dotfiles/tmux.conf
cp ~/.bashrc ~/Repos/dotfiles/bashrc
cp -r ~/.config/zathura ~/Repos/dotfiles/zathura
cp -r ~/.config/rclone ~/Repos/dotfiles/rclone
cp -r ~/Images/wallpapers ~/Repos/dotfiles/Images/wallpapers
cp ~/setup_manjaro.sh ~/Repos/dotfiles/setup_manjaro.sh
git add -A
git commit -m "new config files"
