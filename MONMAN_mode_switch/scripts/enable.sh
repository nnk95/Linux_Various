#!/bin/bash

clear
echo "Enabling monitor mode for:" $wirelessname

/sbin/ifconfig $wirelessname down > /dev/null 2>&1
/sbin/iwconfig $wirelessname mode monitor > /dev/null 2>&1
/sbin/ifconfig $wirelessname up > /dev/null 2>&1
/sbin/iwconfig $wirelessname | grep 'Mode:'

export wirelessname
bash ~/runme.sh
