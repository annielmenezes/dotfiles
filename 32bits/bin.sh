#!/bin/bash

cd ~/Downloads
echo "Installing $VIVALDI_VERSION 32bits"
wget https://vivaldi.com/download/$VIVALDI_VERSION_i386.deb
dpkg -i $VIVALDI_VERSION_i386.deb
rm -f $VIVALDI_VERSION_i386.deb

echo "Installing $DROPBOX_VERSION 32bits"
wget https://www.dropbox.com/download?dl=packages/ubuntu/$DROPBOX_VERSION_i386.deb
dpkg -i $DROPBOX_VERSION_i386.deb
rm -f $DROPBOX_VERSION_i386.deb

echo "Installing $VAGRANT_VERSION 32bits"
wget https://dl.bintray.com/mitchellh/vagrant/$VAGRANT_VERSION_i686.deb
dpkg -i $VAGRANT_VERSION_i686.deb
rm -f $VAGRANT_VERSION_i686.deb

echo "Installing $SUBLIME_VERSION 32bits"
wget http://c758482.r82.cf2.rackcdn.com/$SUBLIME_VERSION_i386.deb
dpkg -i $SUBLIME_VERSION_i386.deb
rm -f $SUBLIME_VERSION_i386.deb

cd $DOT_PATH