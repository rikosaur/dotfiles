set nocompatible

" Syntax Highlighting
filetype plugin on
syntax on 

" Turn on Mouse Support
set mouse=a
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

Bundle 'powerline/powerline', {'rtp':'powerline/bindings/vim/'}

filetype plugin indent on
