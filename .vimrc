"----------------------------Pathogen configs
execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on

" NERDTree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p	" Jump to the main window.
"----------------------------

" Syntax
colorscheme monokai
set autoindent
syntax enable
set nu

" Matching Parentheses
hi MatchParen cterm=bold ctermbg=239 ctermfg=none

" Inverted T direction keys
map i <Up>
map j <Left>
map k <Down>
map l <Right>

noremap h i
noremap H I
noremap I H

imap ` <Esc>
