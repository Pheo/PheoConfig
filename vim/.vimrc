set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All Plugins Here
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'walm/jshint.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" End All Plugins

call vundle#end()            " required
filetype plugin indent on    " required

" Set swap files dir
set swapfile
set dir=~/tmp

" Guifont
set guifont=Inconsolata\ Medium\ 12


" Jap Stuff
" set fileencodings=iso-2022-jp,euc-jp,cp932,utf8,default,latin1

" Line Numbers
set number

" Needed for vim-airline to show
set laststatus=2

" Turn on Syntax Highlighting
syntax on

" Tab Shit
set tabstop=4
set expandtab
set shiftwidth=4

" Fuckin' Color Scheme
colorscheme slate

" No broken fuck paste comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" X Clipboard
set clipboard=unnamedplus,unnamed

" 80 column highlight
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Omnifunc enable
set omnifunc=syntaxcomplete#Complete

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" YCM Settings
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0

" Python 2/3
let g:syntastic_python_python_exec = '/usr/bin/python2'

