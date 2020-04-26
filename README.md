# my-vim
My vim configuration

vimrc is commented.

## Installation

    
    git clone --depth=1 https://github.com/Krowemoh/my-vim.git ~/.vim
    mkdir ~/.vim/undodir
  
Add the below to your ~/.vimrc file:
    
    runtime vimrc
    
## Packages

Pathogen

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  
NERDTree - File Drawer

    git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
    
YouCompleteMe - Autocompletion

    apt install build-essential cmake vim python3-dev
    cd ~/.vim/bundle/
    git clone https://github.com/ycm-core/YouCompleteMe.git
    python3 install.py --ts-completer
    
   
Vim Polygot - Language Pack

    git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polygot

u2py - Universe Programs hotkeys
    
    :BP - Compiles programs
    :FMT - Formats Programs
