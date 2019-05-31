
# TODO: move PATH and other EXPORTS here

# start i3 if on Arch & on tty1:
#["$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

loadkeys /root/scripts/ttymaps.kmap 2>/dev/null

export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

export TERMINAL="xterm"

