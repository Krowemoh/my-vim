# my-vim

My vim configuration

vimrc is commented.

## Basic Setup

    git clone --depth=1 https://github.com/Krowemoh/my-vim.git ~/.vim
    echo "runtime vimrc" > ~/.vimrc
    
## Adding undo

    mkdir ~/.vim/undodir

## Packages

### Pathogen - vim package manager

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

### Vim Polygot - language pack

    git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polygot

