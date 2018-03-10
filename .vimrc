":string" Vi 互換なし
if &compatible
    set nocompatible               " Be iMproved
endif

 "ファイルタイプに応じた自動インデント
filetype off
filetype plugin indent off

" Character encoding Setting  ref="http://www.tooyama.org/vim-2.html"
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
scriptencoding utf-8


"syntax on"
syntax on
" leader
let mapleader = ','
"カーソルが空白でも動ける
set virtualedit=all
"すでにバッファを開いていたらそこに飛ぶ
set switchbuf=useopen
" タブが対応する空白の数
set tabstop=4
" タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数
set softtabstop=4
" インデントの各段階に使われる空白の数
set shiftwidth=4
" タブを挿入するとき、代わりに空白を使う
set expandtab
"対応するカッコ"
set showmatch
"リアルタイム検索"
set incsearch
"ハイライト:
set hlsearch
"行番号を表示"
set number
"カーソルの位置を右下に表示"
set ruler
"カーソルのある行にライン"
set cursorline
"最後の行に常にステータスを表示"
set laststatus=2
"下のメッセージ二行まで"
set cmdheight=2
"不可視文字を見えるようにする"
set list
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
"ビープ音完全に消す"
set visualbell t_vb=
set noerrorbells
"高度な自動インデント"
set smartindent
"検索が先頭にループ"
set wrapscan
"検索時に大文字小文字の区別をつけない"
set ignorecase
"カーソルの先の視界を確保"
set scrolloff=10
"カーソルが端のとき行をまたぐ"
set whichwrap=b,s,h,l,<,>,[,]
"デフォルトで置換の時その行のすべてのマッチを置き換える"
set gdefault
"保存されてないときは終了時に保存確認"
set confirm
"保存されてないファイルがあるときでも他のファイルを開ける"
set hidden
"外部でファイルが変更されたときは読み直す"
set autoread
"ファイル保存時にバックアップを作らない"
set nobackup
"スワップファイルを作らない"
set noswapfile
" クリップボード"
" set clipboard=unnamed,autoselect

"自動で括弧補完"
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
";,:をイレカエル"
nnoremap ; :
nnoremap : ;
"exモード無視"
nnoremap Q <nop>
"ノーマルモードを維持したままOで下に空行を作れる"
nnoremap <silent> O :<C-u>call append(expand('.'), '')<Cr>j
"buffer
nnoremap <silent> <Space>l :bn<CR>
nnoremap <silent> <Space>h :bp<CR>
"terminal mode
tnoremap <silent> <C-j><C-j> <C-\><C-n>
"プラグイン
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = expand('~/.vim/bundles')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" Required:
set runtimepath+=/home/nagura/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)

  " Add or remove your plugins here:
  call dein#load_toml('~/.vim/rc/dein.toml',{'lazy':0})
  call dein#load_toml('~/.vim/rc/dein_lazy.toml',{'lazy':1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins onstartup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

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
