
" ---- Indenting ---- "
set tabstop=2
set shiftwidth=2

" ---- Plugins ---- "
call plug#begin('~/.vim/plugged')

Plug 'maxmellon/vim-jsx-pretty'
let g:vim_jsx_pretty_colorful_config = 1 " default 0

" ---- Vim Prettier ---- "
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'false'

Plug 'dense-analysis/ale'

call plug#end()
