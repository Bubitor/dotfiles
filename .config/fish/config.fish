if status is-interactive
	python ~/.config/fish/clock.py
end

function fish_greeting
    if [ $(date +%H) -le 11 ] && [ $(date +%H) -gt 6 ];
        echo -e "\e[1mBré ráno" $(whoami)", je "$(timedatectl status | grep Local | awk '{print $3,$4}')". BAT: "$(cat /sys/class/power_supply/BAT0/capacity)"%"
    end
    if [ $(date +%H) -le 17 ] && [ $(date +%H) -gt 12 ];
        echo -e "\e[1mBré odpoledne" $(whoami)", je "$(timedatectl status | grep Local | awk '{print $3,$4}')". BAT: "$(cat /sys/class/power_supply/BAT0/capacity)"%"
    end
    if [ $(date +%H) -le 24 ] && [ $(date +%H) -gt 17 ];
        echo -e "\e[1mBrý večír" $(whoami)", je "$(timedatectl status | grep Local | awk '{print $3,$4}')". BAT: "$(cat /sys/class/power_supply/BAT0/capacity)"%"
    end
end

if status is-interactive
    ~/.config/fish/weather.sh
end

if status is-interactive

    set -gx EDITOR "nvim"
    set -gx VISUAL "nvim"
    set -x PATH $HOME/.cargo/env $PATH
end

if not pgrep -f i3 > /dev/null
    exec startx
end

set -gx PATH $PATH ~/.local/bin
alias rm="rm -r"
alias py="python"
alias yay="paru" 
alias yeet="sudo pacman -Rns"
alias vi="nvim"
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
alias bt="bluetoothctl connect 00:68:82:1E:A7:BE"
alias su="sudo"
alias gitc="git clone"
alias dc="cd"
