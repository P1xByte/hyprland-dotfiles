" Neovim Settings

set encoding=utf-8
set nocompatible
set ignorecase
set smartcase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set relativenumber
set wildmode=longest,list
syntax on
set mouse=a
set clipboard=unnamedplus
set ttyfast
set so=30
filetype plugin indent on

" Plugins
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <leader>n :NERDTreeToggle<CR>

inoremap <expr> <Left> coc#pum#visible() & coc#pum#confirm : "\<Left>"
