" sudo apt-get install fonts-powerline
" General settings
set encoding=utf-8
set number relativenumber

syntax on
set noswapfile
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 
set fileformat=unix

set scrolloff=7
set path+=**
set wildmenu
set noerrorbells
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=grey

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'                 " colorscheme
Plug 'jiangmiao/auto-pairs'            " pair brackets
Plug 'preservim/nerdtree'              " file system explorer
Plug 'preservim/nerdcommenter'         " comment functions
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sansyrox/vim-python-virtualenv'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'SirVer/ultisnips'
" Plug 'tmhedberg/SimpylFold'          " Code folding (zo: open, zc: close)

call plug#end()

let g:python3_host_prog = '/usr/bin/python3'
" Coc plugins
source $HOME/.config/nvim/plug-config/coc.vim

" CocInstall coc-json coc-spell-checker coc-prettier coc-git coc-pyright coc-docker 

" Theme
colorscheme gruvbox
let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-?> <Plug>NERDCommenterToggle
vmap <C-?> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>[ :bp<CR>              " Default leader is \
nmap <leader>] :bn<CR>
nmap <C-w> :bd<CR>


" python alias (,p runs python on script. ,t times python script)
nmap ,p :w<CR>:!python3 %<CR>
nmap ,t :w<CR>:!time python3 %<CR>

" air-line
let g:airline_powerline_fonts = 1

