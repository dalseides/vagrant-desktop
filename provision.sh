#!/bin/sh

source user.conf

sudo apt-get update
sudo apt-get install -y vim virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 
sudo apt-get install -y xinit lxde hal #-common
sudo apt-get install -y wget tmux git
#sudo apt-get install -y xfce4

sudo VBoxClient --clipboard
sudo VBoxClient --display
sudo VBoxClient --checkhostversion
sudo VBoxClient --seamless

sudo mkdir /data
wget -P /data http://images.freeimages.com/images/large-previews/8d7/trees-in-the-snow-1524996.jpg
sudo sed -ie 's/wallpaper=.*/wallpaper=\/data\/trees-in-the-snow-1524996.jpg/' /usr/share/lxde/pcmanfm/LXDE.conf

cd /tmp/
mkdir tmptmp
git clone https://github.com/dalseides/vagrant-desktop.git
source user.conf

echo ----------------------
echo $NEWUSER
echo doodeedoodeedoo

sudo groupadd console
sudo usermod -a -G console vagrant

sudo rm -rf /tmp/tmptmp

sudo shutdown -r now
#startlxde&
#exec startxfce4&
