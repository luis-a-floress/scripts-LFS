#!/bin/bash
sudo mkdir -v $LFS/tools
sudo ln -sv $LFS/tools /
sudo groupadd lfs
sudo useradd -s /bin/bash -g lfs -m -k /dev/null lfs
sudo passwd lfs
sudo chown -v lfs $LFS/tools
sudo chown -v lfs $LFS/sources
su - lfs
