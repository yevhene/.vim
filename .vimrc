" Improved
set nocompatible

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

" Disable bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

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

" Setup GUI
if has("gui_running")
  " Set window size
  set lines=40 columns=115

  " Remove menu bar
  set guioptions-=m

  " Remove toolbar.
  set guioptions-=T

  " Remove right-hand scroll bar
  set guioptions-=r
endif

" Highlight long strings
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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

" Vundle.
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Vundle bundles list

Plugin 'tpope/vim-rails'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jimenezrick/vimerl'
Plugin 'scrooloose/nerdtree'

" Vundle end
call vundle#end()
filetype plugin indent on

" NERDTree.
if has("gui_running")
  " NERDTree buffer width
  let g:NERDTreeWinSize=30
  " Auto open NERDTree
  au VimEnter *  NERDTree
else
  let g:NERDTreeWinSize=22
end

