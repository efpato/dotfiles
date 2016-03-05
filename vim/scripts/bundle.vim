set nocompatible
filetype off

"=====================================================
" Vundle settings
"=====================================================
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'

" --- Python ---
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'jmcantrell/vim-virtualenv'

" --- JavaScript ---
Plugin 'pangloss/vim-javascript'

Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype on
filetype plugin on
filetype plugin indent on

