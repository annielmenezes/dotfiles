apt install chromium-browser

cd ~/temp

echo "Installing Vivaldi version: $VIVALDI_VERSION"
wget https://vivaldi.com/download/$VIVALDI_VERSION_amd64.deb
dpkg -i $VIVALDI_VERSION_amd64.deb
rm -f $VIVALDI_VERSION_amd64.deb

echo "Installing Opera Developer version: $OPERA_VERSION"
wget https://download1.operacdn.com/pub/opera-developer/$OPERA_VERSION/linux/opera-developer_$OPERA_VERSION_amd64.deb
dpkg -i $OPERA_VERSION_amd64.deb
rm -f $OPERA_VERSION_amd64.deb

echo "Installing Developer Edition version: Latest"
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64" -O firefox-developer.tar.bz2
tar -jxvf firefox-developer.tar.bz2 -C /opt/
mv /opt/firefox*/ /opt/firefox-developer
ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer
echo -e '[Desktop Entry]\n Version=59.0.3\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop
sudo chmod +x /usr/share/applications/firefox-developer.desktop
cp /usr/share/applications/firefox-developer.desktop ~/Desktop

# Return to project folder after install softwares
cd $DOT_PATH
