" true color support
set termguicolors

" leader
let mapleader=','

" theme
colorscheme material

syntax on

" line numbers
set number
" don't break lines in the middle of a word
set linebreak
" copy/paste to/from clipboard
set clipboard=unnamedplus
" highlight line cursor is currently on
set cursorline
" show matching parenthesis
set showmatch

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
