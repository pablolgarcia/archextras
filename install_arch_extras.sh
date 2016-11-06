#!/bin/sh
#Install Xorg
echo "Installing Xorg and virtualbox guest pkg"
sudo pacman -Syu linux-headers xorg-server xorg-xinit xorg-utils xorg-server-utils mesa xorg-twm xterm xorg-xclock virtualbox-guest-utils virtualbox-guest-dkms --noconfirm
#Install Desktop Environment
echo "Installing Mate desktop environment"
sudo pacman -Syu mate mate-extra gtk-engine-murrine --noconfirm

#Install video and audio codecs
#echo "Installing video and audio codecs"
#sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins --noconfirm

#Install yaourt
echo "Installing Yaourt"
sudo pacman -S yaourt --noconfirm
yaourt -Syu --aur

#Install common apps
echo "Installing web-browsers and filezilla"
sudo pacman -Syu filezilla firefox --noconfirm
yaourt -S google-chrome --noconfirm
sudo pacman -S openssh --noconfirm
#sudo pacman -S libreoffice-still --noconfirm


#Install LAMP with php7 and mysql (not mariaDB)
echo "Installing LAMP"
sudo pacman -Syu apache php php-apache php-gd php-mcrypt php-intl php-xsl mysql-workbench --noconfirm
git clone https://aur.archlinux.org/mysql.git
cd mysql
makepkg -s
makepkg -i

#Install zsh and oh my zsh
echo "Installing Oh My Zsh and Terminator"
sudo pacman -Syu zsh zsh-completions terminator --noconfirm
yaourt -S oh-my-zsh-git --noconfirm
cp /usr/share/oh-my-zsh/zshrc ~/.zshrc
chsh -s /usr/bin/zsh

#Install Composer
echo "Installing Composer"
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

#Install phpstorm
echo "Installing PhpStorm"
yaourt -S phpstorm --noconfirm

#Install VirtualBox
echo "Installing VirtualBox"
sudo pacman -S virtualbox virtualbox-host-modules-arch --noconfirm
sudo modprobe vboxdrv
yaourt -S virtualbox-ext-oracle --noconfirm
sudo gpasswd -a argdev vboxusers

#Install NodeJs, npm and gulp
echo "Installing NodeJs and Gulp"
sudo pacman -S nodejs npm --noconfirm
sudo npm install -g gulp

