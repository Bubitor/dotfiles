xrdb -merge $HOME/.Xresources &
setxkbmap -layout cz,us -option grp:alt_shift_toggle &  
xset r rate 350 20 &
nm-applet
picom &
~/.config/polybar/launch.sh
#polybar
dunst &
wal -i ~/.config/wllpapor &
mpd &
Discord &
sleep 3s &
kitty -e tty-clock -C3 -b -c -f%d-%m-%Y 
#cbonsai -liw1 --seed 119
done
