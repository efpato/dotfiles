set guifont=Meslo\ for\ Powerline
set fillchars+=stl:\ ,stlnc:\
set t_Co=256
set encoding=utf-8
set termencoding=utf-8

" Don't bell and blink
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell
set ls=2                " always show status bar
set incsearch           " incremental search
set hlsearch            " highlighted search results
set nu                  " line numbers
set scrolloff=5         " keep some more lines for scope
set showmatch           " show matching brackets/parenthesis
set matchtime=0         " don't blink when matching

" Swaps and backups
set dir=/tmp
set backupdir=/tmp

" Highlight characters past column 80
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=#c12a0f
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
    autocmd FileType ruby,python match Excess /\%80v.*/
    autocmd FileType c,cpp match Excess /\%100v.*/
    autocmd FileType javascript match Excess /\%120v.*/
augroup END

syntax enable
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch

set clipboard+=unnamedplus

colorscheme Monokai
