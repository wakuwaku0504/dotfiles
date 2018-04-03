
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
tnoremap <silent> <C-t> <C-\><C-n>

