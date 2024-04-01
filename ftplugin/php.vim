setlocal tabstop=4
setlocal shiftwidth=4
let b:ale_fixers = ['phpcbf', 'remove_trailing_lines', 'trim_whitespace']
let b:ale_linters = {'php': ['php -l', 'php-cs-fixer', 'psalm', 'phpcs']}
autocmd FileType php set iskeyword+=$

" PHPActor config
" Include use statement
nmap <Leader>u :PhpActor#ImportClass()<CR>

" Invoke the context menu
nmap <Leader>mm :PhpActor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :PhpActor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :PhpActor#GotoDefinition()<CR>

" Transform the classes in the current file
nmap <Leader>tt :PhpActor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cc :PhpActor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :PhpActor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>PhpActor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>PhpActor#ExtractMethod()<CR>
