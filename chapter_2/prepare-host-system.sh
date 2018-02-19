#!/bin/bash
sudo apt install bison
sudo apt install gawk
sudo ln -sf /bin/bash /bin/sh
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo apt-get update
sudo apt-get install texinfo
bash version-check.sh
bash library-check.sh
sudo mkfs -v -t ext4 /dev/sda1
sudo mkswap /dev/sda5
export LFS=/mnt/lfs
echo $LFS
sudo mkdir -pv $LFS
sudo mount -v -t ext4 /dev/sda1 $LFS
sudo /sbin/swapon -v /dev/sda5
bash pack-patch.sh
