#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

picom -b &
feh --bg-fill ~/Photos/wallpapers/space2.jpg &
xrdb -merge  ~/.Xresources &
#xrandr --output eDP-1 --gamma 1:0.95:1 &
numlockx on &
# xscreensaver --no-splash &
#autorandr -c
#st &
export PATH=$PATH:~/.local/share/flatpak/exports/bin/
exec ~/.screenlayout/default.sh &
exec dbus-run-session -- i3
