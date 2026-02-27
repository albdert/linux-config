#!/usr/bin/env bash

# Options
options=" Poweroff\n Reboot\n Lock\n Log-out\n"

# Selection
selection=$(echo -e "$options" | fuzzel --dmenu --prompt "Power > " | awk '{print $2}')

# Action
case "$selection" in
    Poweroff) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Lock) swaylock ;;
    Log-out) niri msg action quit ;; 
esac
