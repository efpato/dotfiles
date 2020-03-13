"=====================================================
" vim-plug settings
"=====================================================

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --- Python ---
Plug 'hynek/vim-python-pep8-indent'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" --- Dockerfile ---
Plug 'ekalinin/Dockerfile.vim'

" --- Ansible ---
Plug 'pearofducks/ansible-vim'

" --- Rust ---
Plug 'rust-lang/rust.vim'

" --- nginx ---
Plug 'chr4/nginx.vim'

" --- toml ---
Plug 'cespare/vim-toml'

call plug#end()
