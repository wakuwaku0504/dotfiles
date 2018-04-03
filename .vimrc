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

if filereadable (expand ($HOME.'/.vim/rc.common/misc.vim'))
    source $HOME/.vim/rc.common/misc.vim
endif

if filereadable (expand ($HOME.'/.vim/rc.common/deinpart.vim'))
    source $HOME/.vim/rc.common/deinpart.vim
endif



"colorschemeより前に記述.
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
autocmd Colorscheme * highlight Visual ctermbg=8colorscheme

"カラースキーム"
set background=dark
colorscheme hybrid 
"コレがないと反映されない
set t_Co=256
" virtualenvのとき
if exists("$VIRTUAL_ENV")
    if !empty(glob("$VIRTUAL_ENV/bin/python3"))
        let g:python3_host_prog = substitute(system("which python"), '\n', '', 'g')
    else
        let g:python_host_prog = substitute(system("which python"), '\n', '', 'g')
    endif
endif
" 最後に
filetype plugin indent on
