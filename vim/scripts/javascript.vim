let g:javascript_enable_domhtmlcss = 1

"=====================================================
" Tern
"=====================================================
let g:tern_map_keys=1

function! tern#DefaultKeyMap(...)
  execute 'nnoremap <buffer> K :TernDoc<CR>'
  execute 'nnoremap <buffer> <C-c>d :TernDef<CR>'
  execute 'nnoremap <buffer> <C-c>n :TernRefs<CR>'
  execute 'nnoremap <buffer> <C-c>r :TernRename<CR>'
  execute 'nnoremap <buffer> <C-c>t :TernType<CR>'
endfunction
