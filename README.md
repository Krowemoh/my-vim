# my-vim

My vim configuration

vimrc is commented.

## Installation - Vim 8.2

    git clone https://github.com/vim/vim.git
    cd vim
    ./configure --enable-python3interp --with-python3-config-dir=/usr/bin/python3
    make
    sudo make install


## Adding undo

    git clone --depth=1 https://github.com/Krowemoh/my-vim.git ~/.vim
    mkdir ~/.vim/undodir

Add the below to your ~/.vimrc file:
    
    echo "runtime vimrc" > ~/.vimrc

## Packages

### Pathogen - vim package manager

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

### Vim Polygot - language pack

    git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polygot

