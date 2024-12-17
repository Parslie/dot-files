#!/bin/bash

PROCESS_ADDRESSES=$(hyprctl clients -j | jq '.[] | .address?' -r)
for ADDRESS in $PROCESS_ADDRESSES
do
	#hyprctl dispatch closewindow address:$ADDRESS
	echo $ADDRESS
done
