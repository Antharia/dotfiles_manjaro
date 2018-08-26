set nocompatible
filetype off

set t_Co=256
syntax enable
set number
filetype indent on
set nohlsearch
set incsearch
set ignorecase
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set nowrap
:imap jj <Esc>

" pour avoir Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" pour que Vundle s'occuppe de Vundle
Plugin 'gmarik/Vundle.vim'

" ici, on ajoute les plugins
"...
Plugin 'munshkr/vim-tidal'
Plugin 'scrooloose/nerdtree'


" tous les plugins doivent être ajoutés avant cette ligne
call vundle#end()
filetype plugin indent on
