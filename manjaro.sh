#/bin/bash

# mise à jour
echo "/// pacman update..."
sudo pacman -Syu

# accès aux paquets AUR
echo "/// pacaur update..."
sudo pacman -S pacaur

# supprime le beep interne de l'ordi
echo "Suppression du beep interne"
sudo rmmod pcspkr
sudo echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf

# installation des paquets utiles
echo "Installation des paquets..."
# sudo pacman -S firefox qutebrowser rofi youtube-dl cmus mps-youtube task nodejs npm python-pip imv rclone mpv lxsession-gtk3 nicotine+ mupdf bind-tools
sudo pacman -S firefox python task tmux rclone zathura zathura-pdf-mupdf xcalib feh

echo " - Audio packages"
sudo pacman -S pulseaudio pulseaudio-bluetooth pavucontrol

echo " - Bluetooth packages"
sudo pacman -S bluez blueman

# pacaur oomox

echo "Installation de scripts python..."
# sudo pip install campdown pywal

echo "Installation de paquets nodejs..."
# sudo npm install -g node-gyp dat

echo "Adding home directories..."
mkdir ~/Repos
mkdir ~/Backup
mkdir ~/Dev

echo "Installation de polices bitmap..."
git clone https://github.com/Tecate/bitmap-fonts.git
cd bitmap-fonts
sudo cp -avr bitmap/ /usr/share/fonts
mkfontdir /usr/share/fonts/bitmap
xset fp+ /usr/share/fonts/bitmap
fc-cache -fv
echo " - Enable bitmap fonts"
sudo mv /etc/fonts/conf.d/10* ~/Backup/
sudo mv /etc/fonts/conf.d/70-no-bitmaps.conf ~/Backup/
sudo ln -s /etc/fonts/70-yes-bitmaps.conf /etc/fonts/conf.d/
fc-cache


echo "Loading the Thinkpad ICC colour profile..."
/usr/bin/xcalib -d :0 ./x200.icc

# echo "Installation de polybar..."
# pacaur -S polybar-git

# remplace le fichier de configuration d'i3wm
# echo "Déplacement du fichier de configuration d'i3wm"
# rm -dr ~/.i3
# cp ~/dotfiles/.config/i3/config ~/.config/i3/config

# remplace tous les dotfiles
# cp -r ~/dotfiles/* ~/

# installe Vundle pour vim
echo "Installation du plugin Vundle pour vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# newsboat est un lecteur rss
# sudo pacman -S newsboat

echo "Installation de zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# fait de zsh le shell par défaut
echo "Faire de zsh le shell par défaut"
chsh -s /bin/zsh

# désinstallation des paquets inutiles
sudo pacman -Rs palemoon-bin

