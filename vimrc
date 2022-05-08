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
set shell=/bin/sh
set shiftwidth=2
set tabstop=2
set tags^=.git/tags
set viminfo='20,<1000
set whichwrap+=<,>,[,]

call plug#begin()
Plug 'bogado/file-line'
Plug 'tpope/vim-rails'
Plug 'vim-crystal/vim-crystal'
Plug 'slim-template/vim-slim'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
call plug#end()

filetype plugin indent on
syntax on

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

" Go to the last cursor location when a file is opened, unless this is a
" git commit (in which case it's annoying)
au BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
  \    execute("normal `\"") |
  \ endif
