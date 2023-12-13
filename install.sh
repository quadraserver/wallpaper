o#!/bin/bash
clear
echo ""
echo "--------------------------------------------------------"
echo ""
echo "              Welcome to the:"
echo ""
echo "                 Wallpaper Installer"                             
echo ""
echo "                        2023 by Thomas Lange"
echo ""
echo "--------------------------------------------------------"
echo ""
git clone https://www.github.com/quadraserver/wallpaper.git
cd wallpaper
echo "   copying Wallpapers to /usr/share/backgrounds/Wallpaper..."
sudo mkdir -p /usr/share/backgrounds/Wallpaper
cp -R *.jpg /usr/share/backgrounds/Wallpaper
cd
echo ""
while true; do
    echo "  do you want the wallpapers folder also in your home directory?"
    echo "--------------------------------------------"
    echo "  Answering [Yy] will leave it there,"
    echo "  answer with [Nn], if it should"
    read -p "  be cleaned up " yn
    case $yn in
        [Yy]* ) exit;;
        [Nn]* ) cd; sudo rm -R /wallpaper; break;;
        * ) echo "Please answer yes or no. [Yy/Nn] ";;
    esac
done
echo ""
echo "  all done. Have a nice day."
echo ""
