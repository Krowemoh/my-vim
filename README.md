# my-vim

My vim configuration

vimrc is commented.

## Installation - Vim 8.2

    git clone https://github.com/vim/vim.git
    cd vim
    make
    sudo make install


## Adding undo

    git clone --depth=1 https://github.com/Krowemoh/my-vim.git ~/.vim
    mkdir ~/.vim/undodir

Add the below to your ~/.vimrc file:
    
<<<<<<< HEAD
    runtime vimrc
 
=======
    echo "runtime vimrc" > ~/.vimrc
    
>>>>>>> 41efd448f1db43cfb2cbe8d92cb28d9a3d467301
## Packages

Pathogen - vim package manager

    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

coc.nvim - code completion

    git clone https://github.com/neoclide/coc.nvim.git ~/.vim/bundle/coc.nvim
    cd ~/.vim/bundle/coc.nvim
    yarn 

Install nvm and use the latest version of node to build coc.

Goyo Vim - clean markdown mode

    git clone https://github.com/junegunn/goyo.vim.git ~/.vim/bundle/goyo-vim

NERDTree - file drawer

    git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

<<<<<<< HEAD
Vim Polygot - language pack

    git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polygot


=======
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
>>>>>>> 41efd448f1db43cfb2cbe8d92cb28d9a3d467301
