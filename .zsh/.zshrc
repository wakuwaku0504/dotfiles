function loadlib() {
        lib=${1:?"You have to specify a library file"}
        if [ -f "$lib" ];then #ファイルの存在を確認
                . "$lib"
        fi
}


#alias読み込み
loadlib $ZDOTDIR/rc/zshalias
#prompt読み込み
loadlib $ZDOTDIR/rc/zshprompt
#setopt読み込み
loadlib $ZDOTDIR/rc/zshopt
#関数読み込み
loadlib $ZDOTDIR/rc/zshfuncs
#zstyle読み込み
loadlib $ZDOTDIR/rc/zshzstyle
#変数の読み込み
loadlib $ZDOTDIR/rc/zshvar
#plugin読み込み
loadlib $ZDOTDIR/rc/zshplugin
#bindkeyの読み込み
loadlib $ZDOTDIR/rc/zshbindkey
#その他の設定
loadlib $ZDOTDIR/rc/zshmisc

