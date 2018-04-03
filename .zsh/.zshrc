#neovim内でターミナルを起動すると.zshenvが読み込まれないようなので
if [ -n $ZSHENV_FLAG ]; then
    . $HOME/.zshenv
fi
#alias読み込み
loadlib $ZDOTDIR/rc.common/zshalias
#setopt読み込み
loadlib $ZDOTDIR/rc.common/zshopt
#関数読み込み
loadlib $ZDOTDIR/rc.common/zshfuncs
#zstyle読み込み
loadlib $ZDOTDIR/rc.common/zshzstyle
#変数の読み込み
loadlib $ZDOTDIR/rc.common/zshvar
#bindkeyの読み込み
loadlib $ZDOTDIR/rc.common/zshbindkey
#その他の設定
loadlib $ZDOTDIR/rc.common/zshmisc
#zplug
loadlib $ZDOTDIR/rc.common/zshzplug

#local設定を読み込み
case $HOST in
    nagura-ThinkPad-T470s) loadlib $ZDOTDIR/rc.local/ThinkPad/.zshrc;;
                        *) loadlib $ZDOTDIR/rc.local/lab/.zshrc;;
esac
