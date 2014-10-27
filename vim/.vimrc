" Pheo's .vimrc 

" Pathogen
execute pathogen#infect()

" General Options
syntax enable
filetype plugin indent on

set number

" Themes
if has("gui_running")
	set background=dark
	colorscheme solarized
else
	set background=dark
	colorscheme jellybeans
	hi Normal ctermbg=NONE
	hi NonText ctermbg=NONE
	hi LineNr ctermbg=NONE

endif

" Tabs stuff
set noexpandtab
set shiftwidth=4
set tabstop=4

let g:clang_library_path = '/usr/lib'
let g:clang_complete_auto = 1
