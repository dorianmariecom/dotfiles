set autoindent
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set history=50
set incsearch
set list listchars=tab:»·,trail:·,nbsp:·
set modelines=0
set nobackup
set nocompatible
set nojoinspaces
set nomodeline
set noswapfile
set nowritebackup
set shell=/bin/bash
set shiftwidth=2
set tabstop=2
set tags^=.git/tags
set viminfo='20,<1000
set whichwrap+=<,>,[,]
set spellfile=$HOME/.vim-spell-en.utf-8.add

let g:is_posix = 1

call plug#begin()
Plug 'bogado/file-line'
Plug 'dag/vim-fish'
Plug 'editorconfig/editorconfig-vim'
Plug 'farmergreg/vim-lastplace'
Plug 'pangloss/vim-javascript'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-crystal/vim-crystal'
call plug#end()
