#!/bin/sh
rm -rf 3rdparty
cat ./aurpackages | xargs -P $(nproc) -I {} git clone https://aur.archlinux.org/{}.git ./3rdparty/{}
cat ./aurpackages | xargs -P $(nproc) -I {} rm -rf ./3rdparty/{}/.git
cat ./aurpackages | xargs -P $(nproc) -I {} cp ./build.sh ./3rdparty/{}/

# Remove dmenu from spectrwm dependency list
# to solve the conflict with j4-dmenu
sed -i "s/'dmenu' //" ./3rdparty/spectrwm-git/PKGBUILD
