#!/bin/bash

sudo su
echo "Please, inform your OS. \n"
echo "ubuntu or elementary"
if [[ $1 =  "elementaty"]]
then
  software-properties-gtk
fi
  

# Updating package repository
apt-get update
apt-get upgrade
apt-get dist-upgrade

# Install Essential packages
apt-get install -y git curl

# Get more browsers
apt-get install -y firefox chromium-browser

cd ~/Downloads
if [[ $(getconf LONG_BIT) = "64" ]]
then
	echo "Installing Vivaldi 64bits" &&
	wget https://vivaldi.com/download/vivaldi_TP4.1.0.219.50-1_amd64.deb &&
	sudo dpkg -i vivaldi_TP4.1.0.219.50-1_amd64.deb &&
	rm -f vivaldi_TP4.1.0.219.50-1_amd64.deb
else
	echo "Installing Vivaldi 32bits" &&
	wget https://vivaldi.com/download/vivaldi_TP4.1.0.219.50-1_i386.deb &&
	sudo dpkg -i vivaldi_TP4.1.0.219.50-1_i386.deb &&
	rm -f vivaldi_TP4.1.0.219.50-1_i386.deb
fi

# Comunication essentials items
sudo apt-get install skype

# Install cloud storage files
if [[ $(getconf LONG_BIT) = "64" ]]
then
  echo "Installing Dropbox 64bits" &&
  wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_amd64.deb &&
  dpkg -i dropbox_2015.02.12_amd64.deb &&
  rm -f dropbox_2015.02.12_amd64.deb
else
  echo "Installing Dropbox 32bits" &&
  wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_i386.deb &&
  dpkg -i dropbox_2015.02.12_i386.deb &&
  rm -f dropbox_2015.02.12_i386.deb
fi

# Add Oh-my-zsh
sudo apt-get install zsh
cd ~/
curl -L http://install.ohmyz.sh | sh

# Add Vagrant for isolated development
cd ~/Downloads
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
dpkg -i vagrant_1.7.2_x86_64.deb

# Clear unnecessary
apt-get autoremove
