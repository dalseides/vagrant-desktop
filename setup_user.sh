#!/bin/sh

NEWUSER=user
NEWPASSWORD=password

sudo mkdir /data
wget -P /data http://images.freeimages.com/images/large-previews/8d7/trees-in-the-snow-1524996.jpg
sudo sed -ie 's/wallpaper=.*/wallpaper=\/data\/trees-in-the-snow-1524996.jpg/' /usr/share/lxde/pcmanfm/LXDE.conf

echo ----------------------
echo $NEWUSER
echo doodeedoodeedoo

sudo groupadd console
sudo usermod -a -G console vagrant
