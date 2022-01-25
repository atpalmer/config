colo desert

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

au FileType lua setl sw=2 ts=2 et
au FileType html setl sw=2 ts=2 et
au FileType yaml setl sw=2 ts=2 et
au FileType ruby setl sw=2 ts=2 et

syntax on
set number
set wildmenu

set incsearch
set hlsearch

nmap <cr> i<cr><esc>

let mapleader=","
nnoremap <leader>r :so ~/.vimrc<cr>
nnoremap <leader>n :set nonumber!<cr>:set number?<cr>
nnoremap <leader>h :noh<cr>
