execute pathogen#infect()
syntax on

colorscheme badwolf
set background=dark

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

"Fold code if it's 10 levels deep
set foldenable
set foldlevelstart=10
set foldmethod=indent

"Start NerdTree by default if not in BP or MPROCLIB
autocmd vimenter * if (match(getcwd(),"BP") == -1 && match(getcwd(),"MPROCLIB") == -1) | NERDTree | endif

"Fcous on opened file instead of NerdTree
autocmd VimEnter * wincmd p

"Close NerdTree when last
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Add default comments for nerdcommenter
let g:NERDCustomDelimiters = { 'text': { 'left': '#','right': '' } }

"Anything under BP, and MPROCLIB will be set to use the syntax highlighter
autocmd BufRead,BufNewFile */BP/* set syntax=unibasic
autocmd BufRead,BufNewFile */MPROCLIB/* set syntax=unibasic

"Run scripts to format or compile programs, autoread is to refresh any changes
"from the commands
set autoread
command F :exec '!~/.vim/u2py/format.py ' . expand("%")
command B :exec '!~/.vim/u2py/basic.py ' . expand("%")


