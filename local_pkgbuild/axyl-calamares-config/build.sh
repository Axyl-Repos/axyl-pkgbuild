#!/bin/sh
echo "################################################################"
echo "################### Making the package"
echo "################################################################"
filename=$(echo $(pwd| awk -v FS='/' '{print $NF}')"-"$(cat ./PKGBUILD | grep "pkgver="|awk -v FS='=' '{print $NF}')"-")
ls ../../../axyl-repo/x86_64/ | grep $filename | xargs -I {} rm -rf ../../../axyl-repo/x86_64/{}
makepkg -sc --noconfirm
yes| yay -c
mv *.pkg.tar.zst ../../../xelph-repo/x86_64/
echo "################################################################"
echo "################### Moved the .zst file to x86_64 folder"
echo "################################################################"
find . -type d -not -path "." -exec sudo rm -r "{}" \;
find . -type f -not -name "build.sh" -not -name "*.install" -not -name PKGBUILD -not -name "*.pkg.tar.zst" -delete
echo "################################################################"
echo "################### Removed all redundant files and folders"
echo "################################################################"
