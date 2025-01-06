#!/bin/bash

CHOICE="$(printf " Lock\n Suspend\n Reboot\n Reboot to UEFI\n Power Off" | fuzzel --dmenu -l 5 -p "Power Menu: " --placeholder "")"

case $CHOICE in
    *"Power Off")
        sh $HOME/.config/hypr/scripts/poweroff.sh;;
    *"Reboot")
        sh $HOME/.config/hypr/scripts/reboot.sh;;
    *"Reboot to UEFI")
        notify-send "Not implemented yet";;
    *"Suspend")
        sh $HOME/.config/hypr/scripts/suspend.sh;;
    *"Lock")
        sh $HOME/.config/hypr/scripts/lock.sh;;
esac