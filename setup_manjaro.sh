#/bin/bash

printf "/// pacman update..."
printf ""
sudo pacman -Syu

printf "/// pacaur installation..."
printf ""
sudo pacman -S pacaur

printf "/// Suppression du beep interne"
printf ""
sudo rmmod pcspkr
sudo printf "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf

printf "/// Installation des paquets utiles..."
printf ""
sudo pacman -S firefox rofi youtube-dl cmus rclone nicotine+ zathura zathura-pdf-mupdf termite zsh unzip powerline tk translate-shell
sudo pacman -S oomox ctags
sudo pacman -S pipewire pipewire-pulse

printf "/// Installation de paquets python..."
sudo pip install campdown pywal
sudo pacaur -S python-pywalfox

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

printf "Copying dotfiles"
git clone https://github.com/Antharia/dotfiles ~/Repos/
sh ~/Repos/dotfiles/restore_dotfiles.sh

printf "Install zathura-pywal\n"
git clone https://github.com/GideonWolfe/Zathura-Pywal.git ~/Repos/
~/Repos/Zathura-Pywal/install.sh

printf "Compiling YouCompleteMe\n"
python3 ~/.vim/bundle/youcompleteme/install.py --clangd-completer


printf "/// Remove useless packages"
sudo pacman -Rs palemoon-bin
