set ts=2 shiftwidth=2 expandtab
set shell=/usr/bin/zsh
set autoindent
set mmp=10000
set nu
set relativenumber
set nowrap
syntax on
set modeline
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set runtimepath^=/usr/share/vim/vimfiles
tnoremap <Esc> <C-\><C-n>
let mapleader = ","
" Replace/change selected string with another string
vnoremap <leader>r "hy:%s/<C-r>h/<C-r>h/gc<left><left><left>

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnext<CR>
nnoremap tm  :tabm<CR>
nnoremap td  :tabclose<CR>

let g:ale_disable_lsp = 1

"" " -------------------------------------------------------------------------------------------------
" Open at last place
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

lua require('plugins')
