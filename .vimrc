" Tristan Smith
" 2019

set encoding=UTF-8

set hidden

set nocompatible
filetype plugin on
syntax on

set number
" set relativenumber

set showmode
set showcmd

set expandtab
set softtabstop =2

inoremap jk <Esc>
inoremap jj <Esc>
inoremap fd <Esc>

" Turn off bells
set novisualbell
set noerrorbells

" Better paste for me
xnoremap p P

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" File Browsing
let g:netrw_banner=0  " disable banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_liststyle=3 " tree view

" Commands
command! Start :! yarn run start
command! Word :call WordProcessor()

" Snippets

nnoremap ,hey console.log('hey');<CR><Esc>

" Plugins

call plug#begin('~/.vim/plugged')

" General Use Plugins
Plug 'junegunn/seoul256.vim'
Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'

" JS
Plug 'heavenshell/vim-jsdoc'
Plug 'w0rp/ale'
Plug 'tristan-smith/skeletons.vim'

" Word Processing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

" Colors
colo seoul256
colo seoul256-light
set background=dark

" Skeletons.vim settings
if exists('g:skeletons')
  nnoremap ,vue :VueSkeleton<CR>
endif

" gVim settings
if has("gui_running")
  if has ("gui_gtk2") || has("gui_gtk3")
    set guifont=Consolas\ 11
  else
    set guifont=Consolas:h11:cANSI:qDEFAULT
  endif

  set guioptions-=m  "menu bar
  set guioptions-=T  "toolbar
  set guioptions-=r  "scrollbar
endif

autocmd Filetype md nnoremap j gj
autocmd Filetype md nnoremap k gk

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
