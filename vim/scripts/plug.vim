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

Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --- Python ---
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" --- Dockerfile ---
Plug 'ekalinin/Dockerfile.vim'

" --- Ansible ---
Plug 'pearofducks/ansible-vim'

" --- Rust ---
Plug 'rust-lang/rust.vim'

" --- Go ---
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" --- nginx ---
Plug 'chr4/nginx.vim'

" --- toml ---
Plug 'cespare/vim-toml'

" --- telescope ---
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }

call plug#end()
