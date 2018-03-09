#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession
#タッチパッド
syndaemon -i 0.5 -k &
#urxvt fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx
xrdb ~/.Xresources
#default WM is i3
#何も引数がないとき$1にi3が代入
#session=${1:-i3}
session=${1:-i3}

case $session in
    gnome       )   exec gnome-session;;
    unity       )   exec unity;;
    i3|i3wm     )   exec /usr/local/bin/i3;;  
    xmonad      )   exec xmonad;;
    *           )   exec $1;;
esac

