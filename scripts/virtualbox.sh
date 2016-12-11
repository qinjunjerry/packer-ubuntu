#!/bin/bash

set -e
set -x

sudo apt-get -y install dkms
sudo apt-get -y install make

# Uncomment this if you want to install Guest Additions with support for X
sudo apt-get -y install xserver-xorg

sudo mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/
sudo /mnt/VBoxLinuxAdditions.run || :
sudo umount /mnt/
rm -f ~/VBoxGuestAdditions.iso
