let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0
let python_slow_sync=1
autocmd FileType python set colorcolumn=120
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
            \ formatoptions+=croq softtabstop=4 smartindent
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent 
            \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
let g:syntastic_python_checkers = ['pylynt']
let g:syntastic_python_pylint_post_args='--max-line-length=120'

"=====================================================
" Python-mode settings
"=====================================================
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" Documentation
let g:pymode_doc = 0

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pylint', 'pep8']
let g:pymode_lint_ignore="C0110,C0111,C1001"
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 0

" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Get possibility to run Python code
let g:pymode_run = 0

" Other options
let g:pymode_options_colorcolumn = 0
let g:pymode_options_max_line_length = 120

" Python code check on PEP8                                                                                                                                                                                                                
autocmd FileType python map <buffer> <F7> :PymodeLint<CR>


"=====================================================
" Jedi settings
"=====================================================
let g:jedi#popup_select_first = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#show_call_signatures = 1

let g:jedi#goto_command = "<C-c>d"
let g:jedi#goto_assignments_command = "<C-c>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<C-c>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<C-r>r"
