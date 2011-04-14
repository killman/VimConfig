" File: .vimrc
" Author: Killman
" Description: vim 
" Last Modified: febrero 14, 2011
set nocompatible                              " vim extended mode
set backup                                    " backup con la version anterior 
set number
set mouse=a                                   " enable mouse compatibity
set noerrorbells                              " no beep or flash for errors
set history=1000                              " command history length
set hlsearch                                  " Resalta la cadena encontrada (Busquedas)
set ignorecase

set autoindent                                " autoindent
set shiftwidth=4                              " number of spaces for autoindentation
set tabstop=4                                 " number of spaces for tab

set backspace=indent,eol,start                " make backspace work normally
set tabpagemax=15                             " max tab number

set guifont=Terminus\ 10
set laststatus=2
set statusline=%f\ %y\ %m%r%h%w
set statusline+=%=                            " statusline: separation between lef and right aligned items
set statusline+=[L:\ %l/%L]\ [C:\ %v]\ [%p%%] " statusline: lines number, column number, percent
set guioptions=aegimrLt                       " set all but toolbar

set pastetoggle=<F2>
nnoremap <silent> <F8> :NERDTreeToggle<CR>
"set rnu
iab backg background=
iab alig align=
iab cent center
iab bgc bgcolor=
iab <?p <?php      ?>
set hlsearch " highlights things found with the search
set incsearch " incremental search
set path=$PWD/** " path for :find
set autoread " watch for file changes
set ruler " show current prosition along the bottom
syntax on " always systax on, for an easier life
" navigation tabs

autocmd FileType php noremap :w!:!/usr/bin/php %
autocmd FileType php noremap :!/usr/bin/php -l %
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd BufNewFile BufRead .*.rb source ~/.vim/scripts/rubysnippets.vim
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery


set makeprg=php\ -1\ %
set errorformat=%m\ in\ %f\ on\ line\ %1

:set ft=html.eruby
:filetype plugin on
:helptags ~/.vim/doc













