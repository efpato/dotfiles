" Comment/Uncomment
let s:comment_map = {
    \   "ansible": '# ',
    \   "c": '\/\/ ',
    \   "cpp": '\/\/ ',
    \   "css": '\/\/ ',
    \   "go": '\/\/ ',
    \   "groovy": '\/\/ ',
    \   "java": '\/\/ ',
    \   "javascript": '\/\/ ',
    \   "php": '\/\/ ',
    \   "python": '# ',
    \   "ruby": '# ',
    \   "rust": '\/\/ ',
    \   "sh": '# ',
    \   "vim": '" ',
    \   "yml": '# ',
    \   "yaml": '# ',
    \   "nginx": '# ',
    \   "dockerfile": '# ',
    \ }

function! ToggleComment()
  if has_key(s:comment_map, &filetype)
    let comment_leader = s:comment_map[&filetype]
    let line = getline('.')
    if strlen(line)
      if line =~ "^" . comment_leader
        execute "silent s/^" . comment_leader . "//"
      else
        execute "silent s/^/" . comment_leader . "/"
      endif
    endif
  else
    echo "No comment leader found for filetype"
  end
endfunction

noremap <C-c>c :call ToggleComment()<cr>
vnoremap <C-c>c :call ToggleComment()<cr>
inoremap <C-c>c <esc>:call ToggleComment()<cr>

" Goto end-of-line
noremap <C-e> $
inoremap <C-e> <esc>A

" Goto begin-of-line
noremap <C-a> ^
inoremap <C-a> <esc>I

" CTRL-Z is Undo
noremap <C-z> u
inoremap <C-z> <C-O>u

" CTRL-Y is Redo
noremap <C-y> <C-R>
inoremap <C-y> <C-O><C-R>

" CTRL-S is Quicksave command
noremap <C-s> :update<CR>
vnoremap <C-s> <C-C>:update<CR>
inoremap <C-s> <C-O>:update<CR>

" Easier split navigations
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Easier change size for splitted windows
nnoremap <M-[> :vertical resize -5<cr>
nnoremap <M-]> :vertical resize +5<cr>

" Activate autocomplete at <Ctrl+Space>
inoremap <C-space> <C-x><C-o>

" GoToDeclaration
nnoremap <C-c>dc :YcmCompleter GoToDeclaration<CR>

" GoToDefinition
nnoremap <C-c>df :YcmCompleter GoToDefinition<CR>

" GoToReferences
nnoremap <C-c>n :YcmCompleter GoToReferences<CR>

" GetDoc
nnoremap K :YcmCompleter GetDoc<CR>

if has('nvim')
     nmap <BS> <C-W>h
endif


