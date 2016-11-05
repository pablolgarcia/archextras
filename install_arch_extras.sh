#!/bin/sh
#Install Xorg
sudo pacman -Syu linux-headers xorg-server xorg-xinit xorg-utils xorg-server-utils mesa xorg-twm xterm xorg-xclock virtualbox-guest-utils virtualbox-guest-dkms mate mate-extra --noconfirm

#Install video and audio codecs
#sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins --noconfirm

#Install yaourt
sudo pacman -S yaourt --noconfirm
yaourt -Syu --aur

#Install common apps
sudo pacman -Syu filezilla firefox --noconfirm
yaourt -S google-chrome --noconfirm
#sudo pacman -S libreoffice-still --noconfirm

#Install LAMP with php7 and mysql (not mariaDB)
sudo pacman -Syu apache php php-apache --noconfirm
git clone https://aur.archlinux.org/mysql.git
cd mysql
makepkg -s
makepkg -i

#Install zsh and oh my zsh
sudo pacman -Syu zsh zsh-completions
yaourt -S oh-my-zsh-git --noconfirm
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
chsh -s /usr/bin/zsh

#Install Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

#Install phpstorm
yaourt -S phpstorm --noconfirm
