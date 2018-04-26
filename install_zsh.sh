#! /bin/bash

#zplug インストール
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
ln -s $HOME/dotfiles/.zshenv $HOME/
ln -s $HOME/dotfiles/.zsh $HOME/
source $HOME/.zshenv


