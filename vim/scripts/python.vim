let python_highlight_all=1
let python_highlight_exceptions=1
let python_highlight_builtins=1
let python_slow_sync=1

autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
            \ formatoptions+=croq softtabstop=4 smartindent
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent 
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with

"=====================================================
" Syntastic
"=====================================================
let g:syntastic_python_checkers = ['pylint', 'pep8']
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_pep8_args = '--max-line-length=80'
let g:syntastic_python_pylint_args = '--disable=C0301,C0111'


autocmd FileType python map <buffer> <F7> :SyntasticCheck<CR>


"=====================================================
" Jedi settings
"=====================================================
let g:jedi#popup_select_first = 1
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#show_call_signatures = 1

let g:jedi#goto_command = "<C-c>d"
let g:jedi#goto_assignments_command = "<C-c>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<C-c>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<C-c>r"
