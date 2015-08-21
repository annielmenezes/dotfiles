#!/bin/bash

# Variables
SYSTEM_BITS_VERSION=$(getconf LONG_BIT)
DOT_PATH=$(pwd)
DROPBOX_VERSION="dropbox_2015.02.12"
SUBLIME_VERSION="sublime-text_build-3083"
VAGRANT_VERSION="vagrant_1.7.4"
VIVALDI_VERSION="vivaldi_TP4.1.0.219.50-1"

# Updating package repository
echo "Updating packages repository before install"
apt-get update
apt-get upgrade
apt-get dist-upgrade

# Install Essential packages
apt-get install -y git

# Get more browsers
apt-get install -y chromium-browser

echo "Installing softwares to $SYSTEM_BITS_VERSION bits system"

if [ $SYSTEM_BITS_VERSION = "64" ];
then
  source $DOT_PATH/64bits/bin.sh
else
  source $DOT_PATH/32bits/bin.sh
fi

# Note the new setup script name for io.js
curl -sL https://deb.nodesource.com/setup_iojs_2.x | sudo bash -
apt-get install -y iojs

# Install Oh-my-zsh
apt-get install -y zsh
curl -L http://install.ohmyz.sh | sh
mv ~/.zshrc ~/.zshrc.default
cp zsh-settings/.zshrc ~/

# Install Docker
wget -qO- https://get.docker.com/ | sh
# Install Docker

# Install Azk to run and manage Docker containers easily
apt-get install -y azk

# Setting sublime setting
cd ~/.config/sublime-text-3/Packages/User
cp sublime-settings/Package\ Control.sublime-settings ~/.config/sublime-text-3/Packages/User
cp sublime-settings/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User

# Remove and Clear unnecessary installed dependencies
apt-get autoremove
apt-get autoclean