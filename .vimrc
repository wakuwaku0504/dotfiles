":string" Vi 互換なし
if &compatible
    set nocompatible               " Be iMproved
endif

if filereadable (expand ($HOME.'/.vim/rc.common/set.vim'))
    source $HOME/.vim/rc.common/set.vim
endif

if filereadable (expand ($HOME.'/.vim/rc.common/map.vim'))
    source $HOME/.vim/rc.common/map.vim
endif

if filereadable (expand ($HOME.'/.vim/rc.common/deinpart.vim'))
    source $HOME/.vim/rc.common/deinpart.vim
endif

if filereadable (expand ($HOME.'/.vim/rc.common/misc.vim'))
    source $HOME/.vim/rc.common/misc.vim
endif



" 最後に
filetype plugin indent on
