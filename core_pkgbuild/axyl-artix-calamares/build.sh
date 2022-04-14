#!/bin/sh
echo "################################################################"
echo "################### Making the package"
echo "################################################################"
updpkgsums
paru -S --noconfirm --needed ckbcomp
makepkg -sc --noconfirm
sudo pacman -Rns $(pacman -Qtdq)
paru -Rns --noconfirm ckbcomp
mv *.pkg.tar.zst ../../core-x86_64/
echo "################################################################"
echo "################### Moved the .zst file to x86_64 folder"
echo "################################################################"
sudo rm -rf pkg
sudo rm -rf src
rm -rf ~/.cmake
