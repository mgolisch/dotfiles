set nocompatible
filetype off

" Vim needs a POSIX-Compliant shell. Fish is not.
if $SHELL =~ 'bin/fish'
set shell=/bin/sh
endif

"Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ternjs/tern_for_vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

"Powerline 
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

"let g:Powerline_symbols = 'fancy'

"Vim config
"Enable Syntax highlighting
syntax on
filetype plugin indent on
"Colorscheme (solarized dark)
"set background=light
"colorscheme solarized
"let g:solarized_termcolors=256
"Airline config
let g:airline_powerline_fonts = 1 
let g:airline_theme='solarized'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
"Enable Statusbar
set laststatus=2
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,    case-sensitive otherwise
set smarttab      " insert tabs on  the start of a line according to
set hlsearch 	  " highlight
set incsearch
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"disable arrow keys
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

"more usefull tab completion in command mode
set wildmenu
"map <leader> to space
let mapleader = " "

map <leader>n :NERDTreeToggle<cr>
"ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
