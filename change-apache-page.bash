#!/bin/bash

# The destination variable is the directory where the apache server is hosted from
# IMPORTANT: Always declare the destination variable without a / at the end
destination="/var/www/mypage"

echo "Sudo rights are needed for this script to execute. Please enter your sudo password when prompted."
sudo echo "Thank you"
echo ""

echo "source of wanted page: "
read source
echo ""

echo "Remove all content of $destination"
sudo rm -r $destination/*
echo "Done"
echo ""

echo "Copy content from $source to $destination"
if [[ "${source: -1}" == "/" ]]; then
    sudo cp -a $source* $destination
else
    sudo cp -a $source/* $destination
fi
echo "Done"
echo ""

echo "Restart Apache"
sudo /etc/init.d/apache2 restart
echo "Done"
echo ""

echo "You can open the website under:"
hostname -I | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'
