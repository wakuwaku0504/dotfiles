### LANG
if [ -n "$WINDOWID" -a -x /usr/bin/X11/xprop ] ; then
	# X Window System 上で走ってるけど X Window System と通信する権限が
	# ないとき (su したときなど) への対策
	xprop -id $WINDOWID >& /dev/null || unset WINDOWID
fi
if [ -n "$WINDOWID" -a -x /usr/bin/X11/xprop ] ; then
	XPROP=`xprop -id $WINDOWID WM_CLASS`
	case $XPROP in
	*kterm*|*krxvt*|*k[wa]term*) LANG=ja_JP.eucJP ;;
	*UXTerm*) LANG=ja_JP.UTF-8 ;;
	*hanterm*) LANG=ko_KR.eucKR ;;
	*caterm*|*crxvt-big5*) LANG=zh_TW.Big5 ;;
	*crxvt-gb*) LANG=zh_CN.GB2312 ;;
	*[xa]term*|*rxvt*) LANG=ja_JP.utf8 ;;
	# gnome-terminal は $WINDOWID の意味が違う
	# mlterm は WM_CLASS を設定しない
	# Eterm もロケール自動認識になった
	*) : ;;
	esac
else
	case $TERM in
	linux|xterm|xterm-debian) LANG=C ;;
	*) LANG=ja_JP.utf-8 ;;
	esac
fi

case $LANG in
	ja_JP.eucJP|ja_JP.ujis|ja_JP.EUC|japanese) JLESSCHARSET=japanese-euc ; LV=-Oej ;;
	ja_JP.UTF-8) JLESSCHARSET=utf-8 ; LV=-Ou8 ;;
	*) JLESSCHARSET=latin1 ; LV=-Al1 ;;
esac
export LANG JLESSCHARSET LV

export LESS=-M
if which lesspipe > /dev/null 2>&1; then
    export LESSOPEN="| /usr/bin/lesspipe %s";
    export LESSCLOSE="/usr/bin/lesspipe %s %s";
fi

export PAGER=less
export EDITOR=vim

case $OSTYPE in
##################   Debian environment #####################
linux*)
path=(  ${HOME}/bin \
	/bin \
	/usr/bin \
	/usr/X11R6/bin \
	/usr/local/bin \
	/usr/local/X11R6/bin)
;;
esac
if [ -f /home/default/etc/zshenv ] ; then
    . /home/default/etc/zshenv
fi
