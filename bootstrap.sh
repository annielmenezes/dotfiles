sudo su

# updating package repository
apt-get update

# Install Essential packages
apt-get install -y git
apt-get intall -y curl

# Add Oh-my-zsh
cd ~/
curl -L http://install.ohmyz.sh | sh

# Add Vagrant for isolated development
cd ~/Downloads
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb
dpkg -i vagrant_1.7.2_x86_64.deb
