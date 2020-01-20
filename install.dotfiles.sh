#!/usr/bin/env bash

# Update the apt package list.
sudo apt-get update -y
sudo apt-get upgrade -y
# install all dependencies in WSL
sudo apt-get install $(cat $PWD/pkglist.txt | awk '{print $1}') -y

# change persmissions to the file and copy the .profile file into your home directory
chmod 777 $PWD/files/.profile
cp $PWD/.profile ~/

# source in on your bashrc
echo "source ~/.profile" >> ~/.bashrc
source ~/.bashrc
