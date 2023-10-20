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

" Goyo settings for distraction free writing
" Set Goyo to be 80 characters wide
autocmd BufRead,BufNewFile *.md :Goyo 80
autocmd BufRead,BufNewFile *.md :set spell spelllang=en_us

function! s:goyo_enter()
    let b:quitting = 0
    let b:quitting_bang = 0
    autocmd QuitPre <buffer> let b:quitting = 1
    cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
    " Quit Vim if this is the only remaining buffer
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
        if b:quitting_bang
            qa!
        else
            qa
        endif
    endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()
