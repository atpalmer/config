syntax on
set number

set sw=4
set ts=4
set sts=4
set expandtab
set smarttab
set autoindent

aug vimrc
    au!
    au FileType lua setl sw=2 ts=2 et
    au FileType html setl sw=2 ts=2 et
    au FileType yaml setl sw=2 ts=2 et
    au FileType ruby setl sw=2 ts=2 et
    au FileType lisp setl sw=2 ts=2 et
    au FileType make setl noet
    au BufReadPost * exe "\'\""
aug END

hi TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

set incsearch
set hlsearch

set wildmenu

nmap <cr> A<cr><esc>

nmap <c-left> <c-w><c-h>
nmap <c-right> <c-w><c-l>
nmap <c-up> <c-w><c-k>
nmap <c-down> <c-w><c-j>

nmap <c-h> <c-w><c-h>
nmap <c-l> <c-w><c-l>
nmap <c-k> <c-w><c-k>
nmap <c-j> <c-w><c-j>

let mapleader=","
nnoremap <leader>r :so ~/.vimrc<cr>
nnoremap <leader>n :set nonumber!<cr>:set number?<cr>
nnoremap <leader>h :noh<cr>
