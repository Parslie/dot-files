#!/bin/bash

COUNT=$(hyprctl clients -j | jq 'length' -r)
echo $COUNT
