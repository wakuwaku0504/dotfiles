
"$B<+F0$G3g8LJd40(B"
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
";,:$B$r%$%l%+%(%k(B"
nnoremap ; :
nnoremap : ;
"ex$B%b!<%IL5;k(B"
nnoremap Q <nop>
"$B%N!<%^%k%b!<%I$r0];}$7$?$^$^(BO$B$G2<$K6u9T$r:n$l$k(B"
nnoremap <silent> O :<C-u>call append(expand('.'), '')<Cr>j
"buffer
nnoremap <silent> <Space>l :bn<CR>
nnoremap <silent> <Space>h :bp<CR>
"terminal mode
tnoremap <silent> <C-t> <C-\><C-n>

