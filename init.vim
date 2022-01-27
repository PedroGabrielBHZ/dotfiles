syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " What the fuck is this?


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This automatically installs the vim-plug plugin manager if
" it is not already installed.
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Some basics
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Respect indentation when starting a new line.
set autoindent             

" Expand tabs to spaces. Essential in Python.
set expandtab              

" Number of spaces tab is counted for.
set tabstop=4              

" Number of spaces to use for autoindent.
set shiftwidth=4           

" Fix backspace behavior on most terminals.
set backspace=2            

" Display relative line numbers
set number relativenumber  
"
" Indentation-based folding.
set foldmethod=indent           

" Enable enhanced tab autocomplete.
set wildmenu                    

" Complete till longest string, then open menu.
set wildmode=list:longest,full  

" Highlight search results.
set hlsearch                    
"
" Search as you type.
set incsearch                   

" Copy into system (*, +) registers.
set clipboard=unnamed,unnamedplus  

set colorcolumn=81

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
" Python syntaxer
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" These are all plugins used for better syntax highlighting
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/html5.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'cespare/vim-toml'
Plug 'evanleck/vim-svelte'

" A theme
Plug 'morhetz/gruvbox'

" This plugin allows me to use fzf, Ag or ripgrep to grep inside files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Files browsing
Plug 'scrooloose/nerdtree'

" This adds a preview server to nvim for markdown files
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Use coc as language server client
let g:coc_global_extensions = [
      \'coc-actions',
      \'coc-clangd',
      \'coc-cmake',
      \'coc-coverage',
      \'coc-css',
      \'coc-eslint',
      \'coc-git',
      \'coc-html',
      \'coc-prettier', 
      \'coc-pyright',
      \'coc-svelte',
      \'coc-tsserver',
      \'coc-vimlsp', 
      \'coc-xml',
      \'coc-yaml',
\]
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use H to show documentation in preview window.
nnoremap <silent> H :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" NERDTree mapping toggle with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Opens NERDTree if no file was specified on launch
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Theme incantation
colorscheme gruvbox
