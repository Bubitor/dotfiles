#
# ~/.bash_profile
#
# StartX
if [ "$(tty)" = "/dev/tty1" ]; then
        startx && exit
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
