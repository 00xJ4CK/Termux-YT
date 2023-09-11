#!/data/data/com.termux/files/usr/bin/bash

# Project name : Termux-YT
# Coded by: 00xJ4CK (You dont become a coder by just changing the credits)
# Github: https://github.com/00xJ4CK/Termux-YT
# Date : 11/08/2023

#Probably make a varible with the file name 
#make it more easy to update!
echo -e "\e[035m"  "Updating default packages\n"
apt update && apt upgrade -y

echo -e "\e[032m" "Requesting acces to storage\n"
echo -e "\e[032m" "Allow Storage Permission!"
sleep 2
termux-setup-storage 

#echo -e "\e[033m" "Installing python\n"
pkg install python -y

echo -e "\e[034m"  "Installing yt-dlp\n"
pip install yt-dlp

echo -e "\e[032m"  "Making the YT Directory to download the Vidoes\n"
mkdir ~/storage/shared/YT


echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Creating Termux-URL-Opener Script.\n"

mv termux-url-opener ~/bin/

chmod +x ~/bin/termux-url-opener

echo -e "\n"
echo -e "\e[032m" "Process Complete!"
echo -e "\e[032m" "Now you can share any Youtube video with Termux and you will be ask to select the quality of your downloaded video and after that,It will be automatically Downloaded. If You will share shorts, it will be download automatically."

