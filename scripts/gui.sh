sudo apt-get -y install chromium-browser
sudo apt-get -y install gkrellm
sudo apt-get -y install emacs vim terminator 
sudo apt-get -y install xtightvncviewer

# also install the official google-chrome
sudo apt-get -y install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
rm -f google-chrome*.deb

