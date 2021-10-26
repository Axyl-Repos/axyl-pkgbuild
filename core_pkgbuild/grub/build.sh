#!/bin/sh
echo "################################################################"
echo "################### Making the package"
echo "################################################################"
makepkg -sc --noconfirm
yes| yay -c
mkdir -p ../../x86_64
mv *.pkg.tar.zst ../../x86_64
echo "################################################################"
echo "################### Moved the .zst file to x86_64 folder"
echo "################################################################"
find . -type d -not -path "." -exec sudo rm -r "{}" \;
find . -type f -not -name "build.sh" -not -name "*.install" -not -name "*.patch" -not -name "*.hook" -not -name "grub-set-bootflag" -not -name "*.cfg" -not -name "*.default" -not -name "update-grub" -not -name "60_memtest86+" -not -name "background.png" -not -name PKGBUILD -not -name "*.pkg.tar.zst" -delete
echo "################################################################"
echo "################### Removed all redundant files and folders"
echo "################################################################"
