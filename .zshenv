#最初に読み込まれて，$HOSTによって読み込む設定を変える
function loadlib() {
        lib=${1:?"You have to specify a library file"}
        if [ -f "$lib" ];then #ファイルの存在を確認
                . "$lib"
        fi
}
export ZDOTDIR=$HOME/.zsh

case $HOST in
    nagura-ThinkPad-T470s) loadlib $ZDOTDIR/rc.local/ThinkPad/.zshenv;;
                        *) loadlib $ZDOTDIR/rc.local/lab/.zshenv;;
esac

#zshenvが読み込まれたことを意味する
ZSHENV_FLAG=1
