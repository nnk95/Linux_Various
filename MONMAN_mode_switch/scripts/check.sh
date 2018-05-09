#!/bin/bash

clear
echo "Checking" $wirelessname ".."

/sbin/iwconfig $wirelessname | grep 'Mode:'

export wirelessname
bash ~/runme.sh
