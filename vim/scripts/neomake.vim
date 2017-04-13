let g:neomake_open_list = 2

autocmd! BufWritePost * Neomake
autocmd FileType python map <buffer> <F7> :Neomake<CR>
