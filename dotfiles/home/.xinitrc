[ -f ~/.xprofile ] && source ~/.xprofile
xrdb -merge ~/.Xresources
monitor
feh --bg-scale /home/yschmitzer/suckless/wallpaper.jpg &
dunst &
fcitx5 &
dwmblocks &
exec dwm
