"----------------------------Styles
" Scheme
colorscheme monokai

" Matching Parentheses
hi MatchParen cterm=bold ctermbg=239 ctermfg=none
"----------------------------Custom visual settings
" Syntax
set autoindent
syntax enable

" Numbers
set number
set numberwidth=5

" Layout related options
set showcmd
set ruler

" Line breaks
set breakindent
set linebreak
set showbreak=\

"----------------------------Custom control settings
" Inverted T direction keys
map i <Up>
map j <Left>
map k <Down>
map l <Right>

noremap h i
noremap H I
noremap I H

" Fuck touchbar
imap ` <Esc>

"----------------------------Plugin configs
execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on

" NERDTree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p	" Jump to the main window.

" Quicker window movement
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l
