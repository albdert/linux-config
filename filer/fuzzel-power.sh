#!/usr/bin/env bash

# Options
<<<<<<< HEAD
options=" Poweroff\n Reboot\n Lock\n Log-out"
=======
options=" Poweroff\n Reboot\n Lock\n Log-out\n"
>>>>>>> 8f9c1b89070f69b188a1382bfa19cf425eacf434

# Selection
selection=$(echo -e "$options" | fuzzel --lines 4 --dmenu --prompt "Power > " | awk '{print $2}')

# Action
case "$selection" in
    Poweroff) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
<<<<<<< HEAD
    Lock) dms ipc call lock lock ;; 
    Log-out) niri msg action quit ;;
  esac
=======
    Lock) swaylock ;;
    Log-out) niri msg action quit ;; 
esac
>>>>>>> 8f9c1b89070f69b188a1382bfa19cf425eacf434
