[ -f ~/.xprofile ] && source ~/.xprofile
xrdb -merge ~/.Xresources
monitor.sh
fcitx5 &
exec dwm
