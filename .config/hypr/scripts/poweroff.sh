#!/bin/bash

# Close all windows
sh ~/.config/hypr/scripts/close_windows.sh

# Wait and check if all windows are closed
sleep 3
WINDOW_COUNT=$(sh ~/.config/hypr/scripts/window_count.sh)

# Poweroff system if all windows are closed
if [ $WINDOW_COUNT -eq 0 ]
then
	systemctl poweroff
else
	notify-send -t 5000 "Could not poweroff" "Not all windows could be closed"
fi
