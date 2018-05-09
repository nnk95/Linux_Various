#!/bin/bash

wirelessname="No wireless interface selected."
clear
echo "Simple mode menu"
echo
echo -e "Interface selected:" "\e[31m"$wirelessname"\e[0m"

PS3='Enter Number: '
option1=( "Select wireless interface" "ENABLE monitor mode" "DISABLE monitor mode" "CHECK monitor mode" "Exit script" )
select opt1 in "${option1[@]}"
do
case $opt1 in
"Select wireless interface")
export wirelessname
bash scripts/selectwifi.sh
;;
"ENABLE monitor mode")
export wirelessname
echo "Enabling monitor mode.."
bash scripts/enable.sh
;;
"DISABLE monitor mode")
export wirelessname
echo "Disabling monitor mode.."
bash scripts/disable.sh
;;
"CHECK monitor mode")
export wirelessname
bash scripts/check.sh
;;
"Exit script")
break
;;
*) echo "Invalid option";;
esac

done
