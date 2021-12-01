set guifont=Meslo\ for\ Powerline
set fillchars+=stl:\ ,stlnc:\
set t_Co=256
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set noswapfile

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

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Highlight characters past column 120
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=#c12a0f
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
    autocmd FileType ruby,python match Excess /\%120v.*/
    autocmd FileType c,cpp match Excess /\%120v.*/
    autocmd FileType javascript match Excess /\%120v.*/
augroup END

filetype indent plugin on
syntax enable
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch

set clipboard+=unnamedplus

" folding
set foldenable
set foldmethod=indent

" Keep all folds open when a file is opened
augroup OpenAllFoldsOnFileOpen
  autocmd!
  autocmd BufRead * normal zR
augroup END

set termguicolors
let ayucolor="dark"
colorscheme ayu
