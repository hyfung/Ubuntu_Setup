#!/bin/bash
if [ ! -e node-v10.15.1-linux-x64 ]
then
    cd ~/Downloads
    wget https://nodejs.org/dist/v10.15.1/node-v10.15.1-linux-x64.tar.xz
fi
tar -xvJf node-v10.15.1-linux-x64.tar.xz
cd "node-v10.15.1-linux-x64"
#mkdir /usr/local/node
sudo cp -r . /usr/local
#sudo ln /usr/local/node /usr/local/bin/node
cd ..
rm -rf "node-v10.15.1-linux-x64"
