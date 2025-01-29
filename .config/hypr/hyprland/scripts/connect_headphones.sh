#!/bin/bash

hyprctl notify 1 3000 0 "Connecting headphones..."
bluetoothctl connect 04:57:91:33:2C:92
hyprctl notify 5 3000 0 "Headphone connected!"
