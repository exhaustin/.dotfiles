"----------------------------Plugin configs
execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on

" NERDTree
"map <C-n> :NERDTreeToggle<CR>
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p	" Jump to the main window.

"----------------------------Styles
" Scheme
colorscheme monokai

" Matching Parentheses
hi MatchParen cterm=bold ctermbg=239 ctermfg=none

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
set linebreak
set showbreak=\

" Tabs
set autoindent
set tabstop=4
set shiftwidth=4
set shiftround
"set expandtab

" Super Retab
:command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

"----------------------------Custom control settings
" Mouse
set mouse=a

" Arrow keys in insert
imap OA <Up>
imap OB <Down>
imap OC <Right>
imap OD <Left>

" Inverted T direction keys
map i <Up>
map j <Left>
map k <Down>
map l <Right>

noremap h i
noremap H I
noremap I H

" Fuck touchbar
"inoremap ` <Esc>
"inoremap <Esc> `

" NERDTree window movement
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

" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/austinspwang/.vimundo/
