#!/bin/sh
cp -r ~/.i3 ~/Repos/dotfiles/i3
cp ~/.vimrc ~/Repos/dotfiles/vimrc
cp ~/.Xresources ~/Repos/dotfiles/.Xresources
cp ~/.zshrc ~/Repos/dotfiles/.zshrc
cp -r ~/.config/i3status ./.config/i3status
cp -r ~/.config/rofi ./.config/rofi
cp -r ~/.config/termite ./.config/termite
cp -r ~/.config/wal ./.config/wal
cp ~/.tmux.conf ~/Repos/dotfiles/.tmux.conf
cp ~/.bashrc ./.bashrc
cp -r ~/.config/zathura ./.config/zathura
cp -r ~/.config/rclone ./.config/rclone


cp -r ~/Images Images
git add -A
git commit -m "new config files"
