#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession
#$B%?%C%A%Q%C%I(B
syndaemon -i 0.5 -k &
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx 
fcitx
xrdb ~/.Xresources
#default WM is i3
#$B2?$b0z?t$,$J$$$H$-(B$1$B$K(Bi3$B$,BeF~(B
#session=${1:-i3}
session=${1:-i3}

case $session in
    gnome       )   exec gnome-session;;
    unity       )   exec unity;;
    i3|i3wm     )   exec /usr/local/bin/i3;;  
    xmonad      )   exec xmonad;;
    *           )   exec $1;;
esac

