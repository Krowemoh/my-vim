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
    
    runtime vimrc

## Packages

### Pathogen - vim package manager

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

### coc.nvim - code completion

    git clone https://github.com/neoclide/coc.nvim.git ~/.vim/bundle/coc.nvim
    cd ~/.vim/bundle/coc.nvim
    yarn 

Install nvm and use the latest version of node to build coc.

### Goyo Vim - clean markdown mode

    git clone https://github.com/junegunn/goyo.vim.git ~/.vim/bundle/goyo-vim

### Vim Polygot - language pack

    git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polygot

### Snippets
    
    git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
    :CocInstall coc-snippets
    :UltiSnipsEdit
