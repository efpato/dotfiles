"=====================================================
" vim-plug settings
"=====================================================

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

" --- Python ---
Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'jmcantrell/vim-virtualenv'

" --- JavaScript ---
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'

Plug 'Valloric/YouCompleteMe'

call plug#end()
