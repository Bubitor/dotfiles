#!/usr/bin/env bash

# Options
shutdown=""
reboot=""
lock=""
suspend=""
hibernate=""
logout=""

# Confirmation
confirm() {
	rofi -dmenu -i -no-fixed-num-lines -p "u sure? y/n: " -theme ~/.config/rofi/confirm.rasi
}

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$hibernate\n$logout"

chosen="$(echo -e "$options" | rofi -theme ~/.config/rofi/powermenu.rasi -p "Uptime: $(uptime -p | sed -e 's/up //g')" -dmenu -selected-row 2)"
case $chosen in
$shutdown)
	ans=$(confirm &)
	if [[ $ans == "y" ]]; then
		systemctl poweroff
	else
		exit 0
	fi
	;;
$reboot)
	ans=$(confirm &)
	if [[ $ans == "y" ]]; then
		systemctl reboot
	else
		exit 0
	fi
	;;
$lock)
	betterlockscreen -l blur
	;;
$suspend)
	ans=$(confirm &)
	if [[ $ans == "y" ]]; then
		systemctl suspend
	else
		exit 0
	fi
	;;
$hibernate)
	ans=$(confirm &)
	if [[ $ans == "y" ]]; then
		systemctl hibernate
	else
		exit 0
	fi
	;;
$logout)
	ans=$(confirm &)
	if [[ $ans == "y" ]]; then
		loginctl terminate-session $(loginctl session-status | head -n 1 | awk '{print $1}')
	else
		exit 0
	fi
	;;
esac
