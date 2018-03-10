if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/nagura/dotfiles/.vim/init.vim', '/home/nagura/.vim/rc/dein.toml', '/home/nagura/.vim/rc/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/nagura/.vim/bundles'
let g:dein#_runtime_path = '/home/nagura/.vim/bundles/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/nagura/.vim/bundles/.cache/init.vim'
let &runtimepath = '/home/nagura/.config/nvim,/etc/xdg/nvim,/home/nagura/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/home/nagura/.vim/bundles/repos/github.com/Shougo/dein.vim,/home/nagura/.vim/bundles/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/nagura/.vim/bundles/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/nagura/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/nagura/.config/nvim/after'
filetype off
        nnoremap <silent> <Space>db :<C-u>Denite -mode=normal buffer<CR> 
        nnoremap <silent> <Space>dy :<C-u>Denite -mode=normal neoyank<CR>
        nnoremap <silent> <Space>df :<C-u>Denite -mode=normal file_rec<CR>
        nnoremap <silent> <Space>dm :<C-u>Denite -mode=normal file_mru<CR>
        nnoremap <silent> <Space>dg :<C-u>Denite -mode=normal grep<CR>
        nnoremap <silent> <Space>dd :<C-u>Denite -mode=normal buffer file_mru<CR>
        let IM_CtrlMode = 6
        inoremap <silent> <C-j> <C-r>=IMState('FixMode')<CR>
        set timeout timeoutlen=3000 ttimeoutlen=100
		let g:EasyMotion_do_mapping=0
		nmap s <plug>(easymotion-overwin-f2)
		let g:EasyMotion_smartcase=1
		let g:airline_theme = 'luna'
		let g:airline_fonts = 2
		let g:airline#extensions#tabline#enabled = 1
		let g:airline#extensions#virtualenv#enabled = 1
        let g:airline#extensions#tabline#buffer_idx_mode = 0
        nnoremap <C-h> <Plug>AirlineSelectPrevTab
        nnoremap <C-l> <Plug>AirlineSelectNextTab
let NERDSpaceDelims = 1
        let g:quicrun_config = { '_' : { 'runner' : 'vimproc', 'runner/vimproc/updatetime' : 40, 'outputter' : 'error', 'outputter/error/success' : 'buffer', 'outputter/error/error' : 'quickfix', 'outputter/buffer/split' : ':botright 8sp'}}
        set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ \[ENC=%{&fileencoding}]%P 
		nnoremap <silent> <C-n> :NERDTreeToggle<CR>
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['neosnippet.vim', 'deoplete.nvim', 'deoplete-jedi'])
