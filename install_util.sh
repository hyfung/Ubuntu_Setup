sudo apt update
sudo apt install minicom cutecom -y
sudo apt install gparted axel git nano screen vim unrar pigz htop curl -y
sudo apt install python3-dev python3 python3-pip -y
sudo apt install golang -y
sudo apt install python-dev python python-pip -y
sudo apt install mysql-client sqlite3 sqlite -y
sudo apt install php7.2 -y
sudo apt install nodejs npm -y
sudo apt install net-tools iperf iperf3 ethtool nmap -y
sudo apt install network-manager-l2tp network-manager-l2tp-gnome -y
sudo apt install cifs-utils ntfs-3g smbclient -y
sudo apt install exfat-fuse exfat-utils sshfs -y
sudo apt install zfsutils zfsutils-linux -y
sudo apt install nfs-common -y

# Install Nodejs #
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt install -y nodejs

bash text_editor_conf.sh

# Install GDM3 on Server#
#sudo apt install -no-install-recommends ubuntu-desktop

# FOR GUI ONLY #
sudo apt install arduino arduino-core cutecom -y
sudo apt install dconf-editor gnome-tweak-tool wireshark -y
sudo apt install firefox vlc gimp audacity ffmpeg -y
sudo apt install fcitx-table-quick-classic gparted sqlitebrowser -y
sudo apt install mysql-workbench mysql-client -y

sudo apt purge rhythmbox thunderbird webbrowser-app mpv -y
sudo apt purge account-plugin-facebook account-plugin-google \
account-plugin-flickr aisleriot -y
sudo apt purge gnome-games-common gbrainy mahjongg ace-of-penguins gnomine -y
sudo apt purge gnome-mahjongg gnome-mines gnome-sudoku aisleriot -y

sudo apt autoremove -y

# Install Sublime 3 #
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

# sudo add-apt-repository ppa:webupd8team/sublime-text-3
# sudo apt-get update
# sudo apt install sublime-text-installer
#

bash kvm.sh

# Install VBox
wget -O vbox_installer.deb "https://download.virtualbox.org/virtualbox/5.2.18/virtualbox-5.2_5.2.18-124319~Ubuntu~bionic_amd64.deb"
wget "https://download.virtualbox.org/virtualbox/5.2.18/Oracle_VM_VirtualBox_Extension_Pack-5.2.18.vbox-extpack"
sudo dpkg -i vbox_installer.deb
rm vbox_installer.deb

# Install Google Chrome #
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install google-chrome-stable
#

sudo apt autoremove -y
#sudo apt install ttf-mscorefonts-installer -y
#sudo apt install samba
#sudo systemctl disable ssh
#sudo service sshd stop
#echo "SSH Daemon stopped for safety"
