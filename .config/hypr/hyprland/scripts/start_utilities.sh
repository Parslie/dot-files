#!/bin/bash

UTILITIES=$(sh ~/.config/hypr/hyprland/scripts/get_utilities.sh)
for UTILITY in $UTILITIES
do
    eval $UTILITY &
done
