syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " What the fuck is this?

" Some basics
set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.
set backspace=2            " Fix backspace behavior on most terminals.
set number relativenumber  " Display relative line numbers
set foldmethod=indent           " Indentation-based folding.
set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string, then open menu.
set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.
set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.
set colorcolumn=80

" So pleasing.
noremap ; :

" Beautiful. Avoids running out for the <Esc> key.
inoremap jj <Esc>

" Remap leader key
let mapleader = ","

" Navigate windows with <Ctrl-hjkl> instead of <Ctrl-w> followed by hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

"Map arrow keys nothing so I can get used to hjkl-style movement.
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.github.com/junegunn/vim-plug/master/plug.vim 
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-python/python-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'davidhalter/jedi-vim'
call plug#end()

set background=dark

colorscheme palenight
let g:python_highlight_all = 1
