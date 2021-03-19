#!/bin/sh
cp -r ~/.i3 ~/Repos/dotfiles/.i3
cp ~/.vimrc ~/Repos/dotfiles/.vimrc
cp ~/.Xresources ~/Repos/dotfiles/.Xresources
cp ~/.zshrc ~/Repos/dotfiles/.zshrc
cp -r ~/.config/i3status ./.config/i3status
cp -r ~/.config/rofi ./.config/rofi
cp -r ~/.config/termite ./.config/termite
cp -r ~/.config/wal ./.config/wal
cp ~/.tmux.conf ~/Repos/dotfiles/.tmux.conf
cp ~/.bashrc ~/Repos/dotfiles/.bashrc
cp -r ~/.config/zathura ~/Repos/dotfiles/.config/zathura
cp -r ~/.config/rclone ~/Repos/dotfiles/.config/rclone
cp -r ~/Images/wallpapers ~/Repos/dotfiles/Images/wallpapers
cp ~/setup_manjaro.sh ~/Repos/dotfiles/setup_manjaro.sh
git add -A
git commit -m "new config files"
