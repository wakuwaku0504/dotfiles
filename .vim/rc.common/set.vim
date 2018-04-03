" Character encoding Setting  ref="http://www.tooyama.org/vim-2.html"
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

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
"カーソルが空白でも動ける
" set virtualedit=all
set background=dark

