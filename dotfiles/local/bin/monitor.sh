#!/bin/bash

connected=$(xrandr --query | grep " connected" | awk '{print $1}')
count=$(echo "$connected" | wc -l)
laptop="eDP"

if [ "$count" -eq 1 ]; then
    xrandr --output "$laptop" --auto
    for m in $connected; do
        [ "$m" != "$laptop" ] && xrandr --output "$m" --off
    done

elif [ "$count" -eq 2 ]; then
    external=$(echo "$connected" | grep -v "$laptop")
    xrandr --output "$laptop" --off --output "$external" --auto

elif [ "$count" -gt 2 ]; then
    xrandr --output "$laptop" --off
    externals=$(echo "$connected" | grep -v "$laptop")
    primary_set=false
    for m in $externals; do
        if ! $primary_set; then
            xrandr --output "$m" --auto --primary
            primary_set=true
        else
            xrandr --output "$m" --auto --right-of "$primary"
        fi
        primary="$m"
    done
fi

