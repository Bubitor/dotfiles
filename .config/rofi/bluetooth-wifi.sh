case "$(echo -e "直\n睊\non\noff" | rofi -theme ~/.config/rofi/powermenu.rasi -dmenu -selected-row 2)" in
    直)
	    nmcli radio wifi on
	    nmcli device wifi connect <wifi-name> password <password-on-that-wifi>;;
    睊)
	    nmcli radio wifi off;;
    on)
	    bluetoothctl connect 00:68:82:1E:A7:BE;;
    off)
	    bluetoothctl disconnect;;
esac
