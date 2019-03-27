#!/bin/bash

rofi_command="rofi -columns 4 -lines 1 -theme themes/powermenu.rasi"

# Each of the icon is a selectable element
options=$'\n\n\n'

chosen="$(echo "$options" | $rofi_command -font "Font Awesome 5 Pro Solid 85" -dmenu)"
case $chosen in
    ) # Lock the screen
        scrot -q 100 /tmp/lock.png; mantablockscreen -i /tmp/lock.png; mantablockscreen -cc
        ;;
    ) # Shutdown the computer
        systemctl poweroff
        ;;
    ) # Reboot the computer
        systemctl reboot
        ;;
    ) # Log out of the current session
        i3-msg exit
        ;;
esac


