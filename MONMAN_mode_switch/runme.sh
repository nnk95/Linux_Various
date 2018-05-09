#!/bin/bash
clear
if [ $wirelessname -z ]
then
wirelessname="No interface selected."
elif [[ $wirelessname == "No interface selected." ]]
then
wirelessname="No interface selected."
fi
echo "WIFI MODE MENU"
echo
echo -e "Interface selected:" "\e[31m"$wirelessname"\e[0m"
PS3='Enter Number: '
option1=( "Select wireless interface" "ENABLE monitor mode" "DISABLE monitor mode" "CHECK monitor mode" "Scan for networks" "TEST injection" "Exit script" )
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
"Scan for networks")
export wirelessname
gnome-terminal -x sh -c "airodump-ng $wirelessname; bash"
;;
"TEST injection")
aireplay-ng -9 $wirelessname
;;
"Exit script")
clear
echo "Stopping script.."
exit 0
break
;;
*) echo "Invalid option";;
esac

done
