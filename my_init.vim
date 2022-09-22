call plug#begin("~/.vim/plugged")
   Plug 'dracula/vim'
   Plug 'scrooloose/nerdtree'
   Plug 'ryanoasis/vim-devicons'
   Plug 'Glench/Vim-Jinja2-Syntax'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'itchyny/lightline.vim'
   Plug 'hashivim/vim-terraform'
call plug#end()
if (has("termguicolors"))
   set termguicolors
endif
syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.
set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
colorscheme murphy         " Change a colorscheme.
set showmatch      " Show matching brackets.
set ignorecase     " Do case insensitive matching
set incsearch      " show partial matches for a search phrase"
set number           
set undolevels=100
autocmd BufEnter *.tf* colorscheme dracula
autocmd BufNewFile,BufRead Jenkinsfile setf groovy
autocmd BufNewFile,BufRead jenkins* setf groovy
autocmd Filetype yaml setlocal ai et ts=2 sw=2 cuc cul
autocmd VimEnter * NERDTree
" "let g:NERDTreeShowHidden = 1
" "let g:NERDTreeMinimalUI = 1
" "let g:NERDTreeIgnore = []
" "let g:NERDTreeStatusline = ''
" "Automaticaly close nvim if NERDTree is only thing left open
" "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&  b:NERDTree.isTabTree()) | q | endif
" " Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR> 
syntax enable
" "colorscheme dracula
