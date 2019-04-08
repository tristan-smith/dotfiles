" Tristan Smith
" 2019


set number
set showmode

set expandtab
set softtabstop =2

inoremap jk <Esc>
inoremap jj <Esc>
inoremap fd <Esc>

" Turn off bells
set novisualbell
set noerrorbells

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Commands
command! Start :! yarn run start
command! Word :call WordProcessor()

" Colors
colo seoul256
colo seoul256-light
set background=dark

" gVim settings
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guifont=Lucida_Console:h10:cANSI:qDRAFT

" Plugins

call plug#begin('~/.vim/plugged')

" General Use Plugins
Plug 'junegunn/seoul256.vim'
Plug 'sheerun/vim-polyglot'

" JS
Plug 'heavenshell/vim-jsdoc'
Plug 'w0rp/ale'

" Word Processing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

function! WordProcessor()
  " Plugins
  Goyo
  Limelight

  " movement changes
  map j gj
  map k gk

  " formatting text
  setlocal wrap
  setlocal linebreak

  " spelling and thesaurus
  setlocal spell spelllang=en_us

endfunction

