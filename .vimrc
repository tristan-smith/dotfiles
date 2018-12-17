set number
set showmode

set expandtab
set softtabstop =2

inoremap jj <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme slate

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'heavenshell/vim-jsdoc'
Plug 'w0rp/ale'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

