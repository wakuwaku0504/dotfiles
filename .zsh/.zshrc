#neovim内でターミナルを起動すると.zshenvが読み込まれないようなので
if [ -n $ZSHENV_FLAG ]; then
    . $HOME/.zshenv
fi
#alias読み込み
loadlib $ZDOTDIR/rc/zshalias
#setopt読み込み
loadlib $ZDOTDIR/rc/zshopt
#関数読み込み
loadlib $ZDOTDIR/rc/zshfuncs
#zstyle読み込み
loadlib $ZDOTDIR/rc/zshzstyle
#変数の読み込み
loadlib $ZDOTDIR/rc/zshvar
#bindkeyの読み込み
loadlib $ZDOTDIR/rc/zshbindkey
#その他の設定
loadlib $ZDOTDIR/rc/zshmisc
#zplug
loadlib $ZDOTDIR/rc/zshzplug

#local設定を読み込み
case $HOST in
    nagura-ThinkPad-T470s) loadlib $ZDOTDIR/rc.local/ThinkPad/.zshrc;;
                        *) loadlib $ZDOTDIR/rc.local/lab/.zshrc;;
esac
