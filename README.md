# dotfiles
## zshの設定の構成
1.~/.zshenvがまず読み込まれる  
2.$HOSTを参照し，$ZDOTDIR/rc.local/(環境毎のディレクトリ)/.zshenvが環境別に読み込まれる  
3.$ZDOTDIR/.zshrcが読み込まれる  
4.$ZDOTDIR/rc以下の共通設定が読み込まれる  
5.$HOSTを参照し，$ZDOTDIR/rc.local/(環境毎のディレクトリ)/.zshrcが環境別に読み込まれる  
## neovim(vim)
