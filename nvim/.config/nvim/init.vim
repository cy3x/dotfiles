let mapleader = ","

call plug#begin('~/.config/nvim/plug')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'romainl/vim-cool'
call plug#end()

set termguicolors
colorscheme deep-space
let g:lightline = { 'colorscheme': 'deepspace' }

syntax on
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

set number relativenumber
set numberwidth=4
set scrolloff=10
set splitbelow splitright
set cursorline
set noshowmode
set showcmd
set wildmenu
set shortmess=atI

set clipboard=unnamedplus
set modeline
set magic
set lazyredraw
set noerrorbells

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set autoindent
set wrap

set hlsearch
set ignorecase
set incsearch
set smartcase

set nobackup
set nowritebackup
set noswapfile

nnoremap ; :
vnoremap ; :

nmap j gj
nmap k gk

nnoremap <Tab> %
vnoremap <Tab> %

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nnoremap <C-t> :tabnew<CR>
nnoremap H gT
nnoremap L gt

nmap <silent>S :w!<CR>
nmap <silent>Q :q<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

au BufRead,BufNewFile *.h,*.c set filetype=c
au BufRead,BufNewFile *.asm set filetype=nasm

" restore cursor to file position in previous editing session
augroup resCur
	au!
	au BufReadPost * call setpos(".", getpos("'\""))
augroup END

" disable auto-comment new line
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

command W w !sudo tee % > /dev/null

nnoremap <silent><F3> :set nohlsearch<CR>
nmap <Leader>s :%s//g<Left><Left>

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
map <silent> <leader><leader> :NERDTreeToggle<CR>
" automatically exit vim if NerdTree is the only window left open
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
