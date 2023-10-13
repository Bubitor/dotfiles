rm README.md log

chmod +x bin/*
chmod +x .config/polybar/launch.sh
chmod +x .config/rofi/bluetooth-wifi.sh
chmod +x .config/rofi/powermenu.sh

mv bin/ /usr/local/bin/
mv opt/ /usr/local/opt/
mv * ~

fc-cache ~/.fonts/
