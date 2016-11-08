#!/bin/bash

# Variables
SYSTEM_BITS_VERSION=$(getconf LONG_BIT)
DOT_PATH=$(pwd)
DROPBOX_VERSION="dropbox_2015.02.12"
ATOM_VERSION="v1.11.2"
VAGRANT_VERSION="vagrant_1.7.4"
VIVALDI_VERSION="vivaldi_TP4.1.0.219.50-1"

# Updating package repository
echo "Updating packages repository before install"
apt-get update
apt-get upgrade
apt-get dist-upgrade

# Install Essential packages
apt-get install -y git build-essential libssl-dev

# Get more browsers
apt-get install -y chromium-browser

echo "Installing softwares to $SYSTEM_BITS_VERSION bits system"

if [ $SYSTEM_BITS_VERSION = "64" ];
then
  source $DOT_PATH/64bits/bin.sh
fi

# Note the new setup script name for nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install v6

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

# install Nuclide
apm install nuclide

# Remove and Clear unnecessary installed dependencies
apt-get autoremove
apt-get autoclean
