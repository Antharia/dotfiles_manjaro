set nocompatible
filetype off

let mapleader=','

set t_Co=256
syntax enable
filetype indent on
set autoindent
set expandtab
set ignorecase
set incsearch
set mouse=a
set nohlsearch
set nowrap
set number
set ruler
set shiftround
set shiftwidth=4
set showcmd
set smarttab
set softtabstop=4
set tabstop=4
:imap fd <Esc>
nmap <leader>o :TagbarToggle<CR>
nmap <Tab> <C-W>w

" put symbols in sign column
hi clear SignColumn

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'
Plugin 'valloric/youcompleteme'
Plugin 'tidalcycles/vim-tidal'
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'michal-h21/vim-zettel'

" to search in the Zettelkasten
let g:nv_search_paths = ['~/Documents/notes']

call vundle#end()

filetype plugin indent on

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

"---- vim-gitgutter settings ----"
let g:airline#extensions#hunks#non_zero_only = 1

"---- vim-airline settings ----"
let g:airline_powerline_fonts = 1
" Always show statusbar
set laststatus=2
" Show PASTE if in paste mode
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"---- jistr/vim-nerdtree-tabs ----"
" Open/close NERDTree Tabs
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
" let g:nerdtree_tabs_open_on_console_startup = 1

"---- vim-syntastic/syntastic ----"
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = "w"
augroup mySyntastic
    au!
    au FileType tex letb:syntastic_mode = "passive"
augroup END

"---- xolox/vim-easytags settings ----"
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- execute python script -----
nmap <leader>p :! python %<CR>
