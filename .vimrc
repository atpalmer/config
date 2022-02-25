syntax on
set number

set sw=4
set ts=4
set sts=4
set expandtab
set smarttab
set autoindent

set scrolloff=4

set incsearch
set hlsearch
set wildmenu

set statusline=[line:\ %l,\col:\ %c]\ %l/%L\ %p%%\ <byteno:\ %o>%=<codepoint:\ %b\ (0x%B)>\ [filetype:\ %Y]\ <path:\ %F>\ %m%r
set laststatus=2

aug vimrc
    au!
    au FileType lua setl sw=2 ts=2 et
    au FileType html setl sw=2 ts=2 et
    au FileType yaml setl sw=2 ts=2 et
    au FileType ruby setl sw=2 ts=2 et
    au FileType lisp setl sw=2 ts=2 et
    au FileType make setl noet
    au FileType markdown setl spell
    au BufReadPost * exe "\'\""
aug END

aug vimrc_c
    au!
    au FileType c :iabbrev <buffer> cif if (0 == 1) {<cr>}<esc>V%o=f(
    au FileType c :iabbrev <buffer> cfor for (int i = 0; i < 0; ++i) {<cr>}<esc>V%o=f0;c
    au FileType c :iabbrev <buffer> cswitch switch {<cr>case 0:<cr>break;<cr>default:<cr>break;<cr>}<esc>V%o=jf0c
    au FileType c :iabbrev <buffer> #i< #include <X.h><esc>0fXc
    au FileType c :iabbrev <buffer> #i" #include "X.h"<esc>0fXc
    au FileType c :iabbrev <buffer> #d #define
    au FileType c :iabbrev <buffer> #m #define X() do {\<cr>;\<cr>} while(0)<esc>Vk>k0fXc
aug END

iabbrev <buffer> rr return

hi TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

command Chop execute "normal $x0j"
command QuoteWord execute "normal ebi'<esc>ea'<esc>b"
command DoubleQuoteWord execute 'normal ebi"<esc>ea"<esc>b'
command ParenWord execute "normal ebi(<esc>ea)<esc>b"
command BraceWord execute "normal ebi{<esc>ea}<esc>b"
command BracketWord execute "normal ebi[<esc>ea]<esc>b"
command AngleWord execute "normal ebi\<<esc>ea\><esc>b"
command HashComment execute "normal 0i#<space><esc>0j"
command SlashComment execute "normal 0i//<space><esc>0j"
command NewStarComment execute "normal 0i<cr>/*<cr><esc>0i<space>*<cr><esc>0i<space>*/<esc>ka<space>"
command AppendComma execute "normal A,<esc>j^"
command AppendSemicolon execute "normal A;<esc>j^"

nmap <cr> A<cr><esc>
nmap <tab> i<tab><esc>w
nmap <space> i<space><esc>w
nmap <bs> i<bs><esc>w

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
nnoremap <leader>d <c-d>
nnoremap <leader>u <c-u>
nnoremap <leader>f <c-f>
nnoremap <leader>b <c-b>
nnoremap <leader>c :Chop<cr>
nnoremap <leader>' :QuoteWord<cr>
nnoremap <leader>" :DoubleQuoteWord<cr>
nnoremap <leader>( :ParenWord<cr>
nnoremap <leader>{ :BraceWord<cr>
nnoremap <leader>[ :BracketWord<cr>
nnoremap <leader>< :AngleWord<cr>
nnoremap <leader>3 :HashComment<cr>
nnoremap <leader>/ :SlashComment<cr>
nnoremap <leader>* :NewStarComment<cr>a
nnoremap <leader>, :AppendComma<cr>
nnoremap <leader>; :AppendSemicolon<cr>
