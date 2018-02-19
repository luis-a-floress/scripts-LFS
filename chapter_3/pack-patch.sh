#!/bin/bash
sudo mkdir -v $LFS/sources
sudo chmod -v a+wt $LFS/sources
wget --input-file=wget-list --continue --directory-prefix=$LFS/sources
mv md5sums $LFS/sources
pushd $LFS/sources
md5sum -c md5sums
popd
bash final-prep.sh
