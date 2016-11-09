scriptencoding utf-8

set nocompatible

" Setting up Vundle - the best vim plugin manager
let iCanHazVundle=1
if has("unix")
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
	echo "Installing Vundle..."
	echo ""
	silent !mkdir -p ~/.vim/bundle    
	silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
endif

filetype off

if has("win32")
  set rtp+=%USERPROFILE%/vimfiles/bundle/Vundle.vim/
  call vundle#rc('D:/vim/bundle/')
else
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#rc('~/.vim/bundle/')
endif

Plugin 'gmarik/Vundle.vim'
" code and files founder
Plugin 'kien/ctrlp.vim'
" code checker
Plugin 'scrooloose/syntastic'
" python-pep8
Plugin 'nvie/vim-flake8'
" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" git integration
Plugin 'tpope/vim-fugitive'

call vundle#end()

" ============================================================================
" Install plugins the first time vim runs

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

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
set autochdir

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