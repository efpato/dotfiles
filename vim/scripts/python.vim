autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
            \ formatoptions+=croq softtabstop=4 smartindent
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent 
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with

let g:python3_host_prog = "/usr/local/bin/python3"

autocmd FileType python map <F5> :!python %<CR>
autocmd FileType python map <F6> :call CocAction('format')<CR>

autocmd BufWritePre *.py execute ':CocCommand python.sortImports'
autocmd BufWritePre *.py execute ':call CocAction("format")'
