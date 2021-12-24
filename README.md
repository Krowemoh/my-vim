# my-vim
My vim configuration

vimrc is commented.

## Installation

    
    git clone --depth=1 https://github.com/Krowemoh/my-vim.git ~/.vim
    mkdir ~/.vim/undodir
  
Add the below to your ~/.vimrc file:
    
    echo "runtime vimrc" > ~/.vimrc
    
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
    git submodule update --init --recursive
    python3 install.py --ts-completer
    python3 install.py --rust-completer
    
   
Vim Polygot - Language Pack

    git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polygot

Goyo Vim

    git clone https://github.com/junegunn/goyo.vim.git

Installing snippets
    
    > git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
    :CocInstall coc-snippets
    :UltiSnipsEdit
