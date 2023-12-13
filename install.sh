o#!/bin/bash
clear
echo ""
echo "         Welcome to the:"
echo ""
echo "  __          __   _ _                               _____           _        _ _"           
echo "  \ \        / /  | | |                             |_   _|         | |      | | |"          
echo "   \ \  /\  / /_ _| | |_ __   __ _ _ __   ___ _ __    | |  _ __  ___| |_ __ _| | | ___ _ __" 
echo "     \ \/  \/ / _` | | | '_ \ / _` | '_ \ / _ \ '__|   | | | '_ \/ __| __/ _` | | |/ _ \ '__|"
echo "      \  /\  / (_| | | | |_) | (_| | |_) |  __/ |     _| |_| | | \__ \ || (_| | | |  __/ |"   
echo "       \/  \/ \__,_|_|_| .__/ \__,_| .__/ \___|_|    |_____|_| |_|___/\__\__,_|_|_|\___|_|"   
echo "                       | |         | |"                                                       
echo "                       |_|         |_|"                                                       
echo ""
echo "                                     2023 by Thomas Lange"
echo ""
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
