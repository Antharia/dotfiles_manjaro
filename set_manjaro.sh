#/bin/bash

printf "/// pacman update..."
printf ""
sudo pacman -Syu

printf "/// pacaur installation..."
printf ""
sudo pacman -S pacaur

printf "Suppression du beep interne"
printf ""
sudo rmmod pcspkr
sudo printf "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf

printf "Installation des paquets utiles..."
printf ""
sudo pacman -S firefox rofi youtube-dl cmus rclone nicotine+ zathura zathura-pdf-mupdf termite zsh unzip powerline tk ctags

printf "Installation de scripts python..."
sudo pip install campdown pywal

printf "Adding home directories..."
mkdir ~/Repos
mkdir ~/Backup
mkdir ~/Dev

# printf "Loading the Thinkpad ICC colour profile..."
# /usr/bin/xcalib -d :0 ./x200.icc

printf "Installation du plugin Vundle pour vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

printf "Faire de zsh le shell par défaut"
chsh -s /bin/zsh

printf "Set gruvbox pywal theme\n"
wal --theme base16-gruvbox-hard

printf "Compiling YouCompleteMe\n"
python3 ~/.vim/bundle/youcompleteme/install.py --clangd-completer
