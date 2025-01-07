#!/bin/bash

# Restarts all programs that needs to be restarted after updating their configs

EXECS="waybar hyprpaper mako hypridle"
for EXEC in $EXECS
do
	pkill $EXEC
    eval $EXEC
done
