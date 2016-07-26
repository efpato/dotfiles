let g:neomake_open_list = 1

autocmd! BufWritePost * Neomake
autocmd FileType python map <buffer> <F7> :Neomake<CR>
