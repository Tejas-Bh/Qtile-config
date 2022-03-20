#!/bin/env bash

# set background
bash $HOME/.config/qtile/scripts/.fehbg

# Kill if already running
killall -9 picom xfce4-power-manager dunst

# Launch notification daemon
dunst -config $HOME/.config/qtile/dunstrc &

# power manager and picom start
xfce4-power-manager &
compton &
