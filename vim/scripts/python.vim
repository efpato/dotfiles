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
" Neomake
"=====================================================
let g:neomake_python_pylint_args = neomake#makers#ft#python#pylint()['args'] +
  \ ['-d', 'line-too-long,
  \         missing-docstring,
  \         invalid-name'
  \ ]

let g:neomake_python_enabled_makers = ['pep8', 'pylint']


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
