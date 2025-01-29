#!/bin/bash

CHOICE="$(printf " Lock\n Suspend\n Reboot\n Reboot to UEFI\n Power Off" | fuzzel --dmenu -l 5 -p "Power Menu: " --placeholder "")"

case $CHOICE in
    *"Power Off")
        sh $HOME/.config/hypr/hyprland/scripts/power/poweroff.sh;;
    *"Reboot")
        sh $HOME/.config/hypr/hyprland/scripts/power/reboot.sh;;
    *"Reboot to UEFI")
        notify-send "Not implemented yet";;
    *"Suspend")
        sh $HOME/.config/hypr/hyprland/scripts/power/suspend.sh;;
    *"Lock")
        sh $HOME/.config/hypr/hyprland/scripts/power/lock.sh;;
esac