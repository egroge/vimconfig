set nocompatible

call plug#begin('~/.vim/plugged')
  "Haskell
  Plug 'neovimhaskell/haskell-vim'
  Plug 'nbouscal/vim-stylish-haskell'
  Plug 'jaspervdj/stylish-haskell'

  "Vim
  Plug 'preservim/nerdtree'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'ycm-core/YouCompleteMe'

  "C
  packadd termdebug
  let g:termdebug_wide = 1
call plug#end()

"splitting windows
set splitbelow
set splitright

set mouse=a

nnoremap <C-f> :YcmCompleter Format<CR>
nnoremap <C-d> :YcmCompleter GetDoc<CR>
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Autopair curly braces when making code block
inoremap {<CR> {<CR>}<ESC>O

syntax on
set number

set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme palenight

highlight LineNr ctermfg=darkgrey
