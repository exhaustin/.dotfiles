"----------------------------Plugin configs
execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on

" NERDTree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p	" Jump to the main window.

"----------------------------Styles
" Scheme
colorscheme monokai

" Matching Parentheses
hi MatchParen cterm=bold ctermbg=242 ctermfg=none

"----------------------------Custom visual settings
" Syntax
if !exists("g:syntax_on")
	syntax enable
endif

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

" Tabs
set autoindent
set tabstop=4
set shiftwidth=4
set shiftround
"set expandtab

"----------------------------Custom control settings
" Unmap NERDTree bindings
nunmap i

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

" Quicker window movement
nmap <C-i> <C-w><Up>
nmap <C-j> <C-w><Left>
nmap <C-k> <C-w><Down>
nmap <C-l> <C-w><Right>
"nmap <C-q> <C-w>q
"nmap <C-q> :q<CR>

" Split window vertically
nmap <leader>v <C-w>v<C-w>l

" Split window horizontally
nmap <leader>s <C-w>s<C-w>j
