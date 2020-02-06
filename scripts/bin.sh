#!/bin/bash

# Download deb's to /temp
cd /temp

echo "Installing Dropbox version: $DROPBOX_VERSION"
wget https://www.dropbox.com/download?dl=packages/ubuntu/$DROPBOX_VERSION_amd64.deb
dpkg -i $DROPBOX_VERSION_amd64.deb
rm -f $DROPBOX_VERSION_amd64.deb

# Return to project folder after install softwares
cd $DOT_PATH
