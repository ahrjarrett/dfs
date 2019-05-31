#!/bin/bash

# add this if block to make sure /etc/X11/xinit/xinitrc is sourced
#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
# for f in /etc/X11/xinit/xinitrc.d/*; do
#  [ -x "$f" ] && . "$f"
# done
# unset f
#fi

# adjust keyboard "typematic" delay and rate (?)
xset r rate 270 30

export QT_SCREEN_SCALE_FACTORS=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# merge & load config from .Xresources
xrdb -merge ~/.Xresources


#setxkbmap -layout us -variant mac
#setxkbmap -option caps:nocaps
#setxkbmap -option ctrl:ac_ctrl
#xkbcomp ~/server-0.xkm

#xmodmap ~/.Xmodmap
#xmodmap -e "keycode 37 = Escape"

#setxkbmap us

feh --bg-fill '/root/dotfiles/backgrounds/dusk.jpg' &
sxhkd &

setxkbmap -layout us -variant mac -option ctrl:nocaps | xkbcomp - $DISPLAY
xmodmap -e "keycode 37 = Escape"
setxkbmap -option ctrl:nocaps

exec i3

