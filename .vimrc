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

let g:is_posix = 1

call plug#begin()
Plug 'bogado/file-line'
Plug 'editorconfig/editorconfig-vim'
Plug 'farmergreg/vim-lastplace'
Plug 'sheerun/vim-polyglot'
Plug 'whatyouhide/vim-lengthmatters'
Plug 'bronson/vim-trailing-whitespace'
call plug#end()

let g:markdown_fenced_languages = ['ruby']
autocmd FileType markdown set nospell
autocmd BufNewFile,BufRead *.code set filetype=ruby
