" Use UTF-8.
set encoding=utf-8

" Enable syntax highlighting.
syntax on

" Line number.
set number

"Always show current position.
set ruler

" Highlight search results.
set hlsearch

" Makes search act like search in modern browsers.
set incsearch

" Show matching brackets when text indicator is over them.
set showmatch

" Use spaces instead of tabs.
set expandtab

" Be smart when using tabs.
set smarttab

" 1 tab == 2 spaces.
set shiftwidth=2
set tabstop=2

" Auto indent.
set ai

" Wrap lines.
set wrap

" Enable Backspace usage.
set backspace=indent,eol,start

" Highlight trailing whitespace.
set list
set listchars=tab:·\ ,trail:· "

" Swap files.
set dir=~/.vim/swp

" On save any: trim trailing whitespace.
autocmd! BufWrite * mark ' | silent! %s/\s\+$// | norm ''

" No scroll in GUI.
set guioptions-=L

" Copy/Paste shortcuts.
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

" Set color scheme that I like.
if has("gui_running")
  colorscheme codeschool
else
  colorscheme default
endif

" Treat long lines as break lines (useful when moving around in them).
noremap j gj
noremap k gk
noremap 0 g0
noremap $ g$

noremap <Up> gk
noremap <Down> gj
noremap <Home> g<Home>
noremap <End> g<End>

inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj
inoremap <Home> <C-o>g<Home>
inoremap <End> <C-o>g<End>

" Pathogen.
call pathogen#incubate()

filetype plugin indent on

" NERDTree.
let g:NERDTreeWinSize=22

