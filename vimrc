" Turn on pathogen to load in plugins
execute pathogen#infect()

set backspace=indent,eol,start
" Turn on syntax highlighting
syntax on

" Turn off the bell sounds
set visualbell
set t_vb=

set viminfo='20,<1000,s1000

" Can type a command get a horizontal menu of options
set wildmenu

" Colorscheme
colorscheme seoul256

" Turn on line numbers
set number

"Tabs are set to 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

"Unlimited Undo/Redo
set undofile
set undodir=~/.vim/undodir

"Indent files correct for gg=G
filetype indent on
set smartindent

"Search as you type, and clear if you hit enter
set incsearch
set ignorecase
nnoremap <CR> :noh<CR><CR>

" Shortcut to print out the date
nnoremap asd :pu! =strftime('%Y-%m-%d')<cr>A<space>

" Set syntax highlighting for BASIC  files
autocmd BufRead,BufNewFile */BP/* set syntax=unibasic
autocmd BufRead,BufNewFile */MPROCLIB/* set syntax=unibasic

" Formatting for Makefiles so that indents don't screw up
au BufNewFile,BufRead Makefile set noexpandtab
