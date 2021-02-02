"----------------------------Plugin configs
"execute pathogen#infect('~/.vim/bundle/{}')
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
set expandtab

" Super Retab
:command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

" Mouse
set mouse=a

" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=~/.vimundo
