filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on





" some config
syntax on
set number
set nocp
set autoindent
set listchars=tab:\.\ ,trail:-
set list
set wildmenu
set wildmode=list:longest,list:full
set laststatus=2
set ruler
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set textwidth=80
set scrolloff=15
set nowrap




set background=dark
"let g:lucius_style = "dark"
"colorscheme lucius
colorscheme mustang


" mouse can be used in term :)
set mouse=a

" allow backspacing over everything in insert mode. works on openbsd ??
set backspace=2

" nerdtree plugin
autocmd vimenter * NERDTreeTabsToggle
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <F2> :NERDTreeToggle<CR>
map <F3> <plug>NERDTreeTabsToggle<CR>
autocmd VimEnter * wincmd l "go to the file, not nerdtree !!!

" tagbar plugin
let g:tagbar_usearrows = 1
map <F4> :TagbarToggle<CR>

" vim indent guides
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=235
"because guide_size=1, i can use the same color
"hi IndentGuidesEven ctermbg=236
hi IndentGuidesEven ctermbg=235
let g:indent_guides_guide_size=1
autocmd vimenter * IndentGuidesEnable



let html_use_css=1
let html_no_pre=1
let html_use_xhtml=1
let php_sql_query=1     "Coloration des requetes SQL
let php_htmlInStrings=1 "Coloration des balises html

" Autocompletion
filetype on
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cpp set omnifunc=ccomplete#Complete

au BufRead,BufNewFile *.thtml setfiletype php
au BufRead,BufNewFile *.phtml setfiletype php

" supertab
"let g:SuperTabDefaultCompletionType = "context"





"testing
set virtualedit=onemore
set history=1000
set showmode
set backspace=indent,eol,start
set showmatch
set incsearch
set hlsearch
set wildmenu
set wildmode=list:longest,full
set pastetoggle=<F12>
let mapleader = ','
map <C-j> <C-W>j<C-W>_
map <C-k> <C-W>k<C-W>_
map <C-l> <C-W>l<C-W>_
map <C-h> <C-W>h<C-W>_
set whichwrap+=>,l
set whichwrap+=<,h


" all of the above : http://stevelosh.com/blog/2010/09/coming-home-to-vim/
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
set relativenumber "seems broken
autocmd WinEnter * set relativenumber
"set colorcolumn=81
au FocusLost * :wa
" html : fold tag !!!
nnoremap <leader>ft Vatzf
" split window vertically, and goes to it
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>a :Ack



" some cursoline tweak, cursorline only on active buffer, and only color
" cursorline, remove that ugly underscore
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
hi clear CursorLine
hi CursorLine ctermbg=238
