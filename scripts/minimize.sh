#!/bin/sh

set -e
set -x

sudo dd if=/dev/zero of=/EMPTY bs=1M || :
sudo rm /EMPTY

swap_device_uuid=`sudo /sbin/blkid -t TYPE=swap -o value -s UUID`
swap_device=`readlink -f /dev/disk/by-uuid/"$swap_device_uuid"`
sudo /sbin/swapoff "$swap_device"
sudo dd if=/dev/zero of="$swap_device" bs=1M || :
sudo /sbin/mkswap -U "$swap_device_uuid" "$swap_device"
