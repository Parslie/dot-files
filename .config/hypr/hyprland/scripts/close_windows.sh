#!/bin/bash

# Tries to close each window that is open.

PROCESS_ADDRESSES=$(hyprctl clients -j | jq '.[] | .address?' -r)
for ADDRESS in $PROCESS_ADDRESSES
do
	hyprctl dispatch closewindow address:$ADDRESS
done
