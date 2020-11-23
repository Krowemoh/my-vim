execute pathogen#infect()
syntax on
set viminfo='20,<1000,s1000
set wildmenu

"set mouse=a

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

"Start NerdTree by default if not in BP or MPROCLIB
let s:path = expand('%:p')
autocmd vimenter * if (stridx(s:path,"notes") == -1 && match(getcwd(),"MPROCLIB") == -1) | NERDTree | endif

"Fcous on opened file instead of NerdTree
autocmd VimEnter * wincmd p

"Close NerdTree when last
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Add default comments for nerdcommenter
let g:NERDCustomDelimiters = { 'text': { 'left': '#','right': '' } }

autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:markdown_fenced_languages = ['javascript', 'js=javascript']

autocmd BufRead,BufNewFile *.md set tw=80
autocmd BufRead,BufNewFile *.md :Goyo 80

au! BufNewFile,BufRead *.svelte set ft=html
au BufNewFile,BufRead *.nim set filetype=nim
au BufNewFile,BufRead Makefile set noet

nnoremap asd :pu! =strftime('%Y-%m-%d %H:%M')<cr>A<space>

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
