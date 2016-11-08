#!/bin/bash

# Go to Downloads folder to get softwares and install them
cd ~/Downloads

echo "Installing $VIVALDI_VERSION 64bits"
wget https://vivaldi.com/download/$VIVALDI_VERSION_amd64.deb
dpkg -i $VIVALDI_VERSION_amd64.deb
rm -f $VIVALDI_VERSION_amd64.deb

echo "Installing $DROPBOX_VERSION 64bits"
wget https://www.dropbox.com/download?dl=packages/ubuntu/$DROPBOX_VERSION_amd64.deb
dpkg -i $DROPBOX_VERSION_amd64.deb
rm -f $DROPBOX_VERSION_amd64.deb

echo "Installing $VAGRANT_VERSION 64bits"
wget https://dl.bintray.com/mitchellh/vagrant/$VAGRANT_VERSION_x86_64.deb
dpkg -i $VAGRANT_VERSION_x86_64.deb
rm -f $VAGRANT_VERSION_x86_64.deb

echo "Installing $ATOM_VERSION 64bits"
wget http://c758482.r82.cf2.rackcdn.com/$ATOM_VERSION-amd64.deb
wget https://atom-installer.github.com/$ATOM_VERSION/atom-amd64.deb
dpkg -i $ATOM_VERSION-amd64.deb
rm -f $ATOM_VERSION-amd64.deb

# Return to project folder after install softwares
cd $DOT_PATH
