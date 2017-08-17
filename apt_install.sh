#!/bin/sh
sudo apt-get update
sudo apt-get install -y vim virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 
sudo apt-get install -y xinit lxde hal #-common
sudo apt-get install -y wget tmux git
#sudo apt-get install -y xfce4

sudo VBoxClient --clipboard
sudo VBoxClient --display
sudo VBoxClient --checkhostversion
sudo VBoxClient --seamless
