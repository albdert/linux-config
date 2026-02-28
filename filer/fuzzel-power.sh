#!/usr/bin/env bash

# Options
options=" Poweroff\n Reboot\n Lock\n Log-out\n"

# Selection
selection=$(echo -e "$options" | fuzzel --lines 4 --dmenu --prompt "Power > " | awk '{print $2}')

# Action
case "$selection" in
    Poweroff) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Lock) dms ipc call lock lock ;; 
    Log-out) niri msg action quit ;;
esac
