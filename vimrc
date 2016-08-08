set nocompatible
filetype plugin on
filetype indent on

set autoread
set wildmenu
set ruler
set cmdheight=2
set showcmd
set ignorecase
set smartcase
set incsearch
set cursorline

set showmatch
set mat=2

set foldenable
set foldlevelstart=10
set foldmethod=indent
set foldcolumn=1
set number

syntax enable
colorscheme desert
set background=dark

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si
set wrap

let g:netrw_liststyle=3
let g:netrw_chgwin=2

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<,nbsp:·