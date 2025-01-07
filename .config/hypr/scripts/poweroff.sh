#!/bin/bash

# Close all windows
sh ~/.config/hypr/scripts/close_windows.sh

# Wait and check if all windows are closed
hyprctl notify 1 3000 0 "Powering off..."
sleep 3
WINDOW_COUNT=$(sh ~/.config/hypr/scripts/window_count.sh)

# Poweroff system if all windows are closed
if [ $WINDOW_COUNT -eq 0 ]
then
	systemctl poweroff
else
	hyprctl notify 3 5000 0 "Could not power off (not all windows could be closed)"
fi
