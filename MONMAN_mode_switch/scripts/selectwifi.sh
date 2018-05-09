#!/bin/bash

clear
echo "Available wireless interfaces: "
echo
/sbin/iwconfig
echo
echo "Enter choosen wireless interface name: "
read wirelessname
clear
echo -e "Interface selected:" "\e[36m"$wirelessname"\e[0m"
echo
export wirelessname
bash ~/runme.sh
