set nocompatible

" Syntax Highlighting
filetype plugin on
syntax on 

" Turn on Mouse Support
set mouse=a

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'

filetype plugin indent on
