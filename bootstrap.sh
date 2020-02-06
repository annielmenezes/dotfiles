#!/bin/bash

# Variables
DOT_PATH=$(pwd)
DROPBOX_VERSION="dropbox_2015.02.12"
OPERA_VERSION=68.0.3590.0
VIVALDI_VERSION="vivaldi_TP4.1.0.219.50-1"

# Updating package repository
echo "Updating packages repository before install"
apt update
apt upgrade
apt dist-upgrade

# Install Essential packages
apt install -y git build-essential libssl-dev

# Install Oh-my-zsh
apt install -y zsh
curl -L http://install.ohmyz.sh | sh
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
mv ~/.zshrc ~/.zshrc.default
cp templates/.zshrc ~/

# Note the new setup script name for nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install --lts

# Install Vim
apt install Vim
cp templates/.vimrc ~/

# Install tmux
apt install tmux

# Install Docker
wget -qO- https://get.docker.com/ | sh

# Get more browsers

source $DOT_PATH/scripts/browsers.sh

source $DOT_PATH/scripts/bin.sh

# Remove and Clear unnecessary installed dependencies
apt autoremove
apt autoclean
