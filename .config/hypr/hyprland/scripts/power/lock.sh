#!/bin/bash

pidof hyprlock || hyprlock  # Only lock if not already locked
