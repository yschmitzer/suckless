[ -f ~/.xprofile ] && source ~/.xprofile
xrdb -merge ~/.Xresources
monitor
feh --bg-scale /home/yschmitzer/suckless/wallpaper.jpg &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
fcitx5 &
dwmblocks &
exec dwm
