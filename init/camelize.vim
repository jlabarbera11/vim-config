function s:camelsnake(word)
  if a:word =~# '_'
    call s:camelcase(a:word)
  else
    call s:snakecase(a:word)
  endif
  execute 'normal b'
endfunction

function! s:camelcase(word)
  let word = substitute(a:word,'\C\(_\)\=\(.\)','\=submatch(1)==""?tolower(submatch(2)) : toupper(submatch(2))','g')
  execute 'normal ciw'.word
endfunction

function s:snakecase(word)
  let word = substitute(a:word,'::','/','g')
  let word = substitute(word,'\(\u\+\)\(\u\l\)','\1_\2','g')
  let word = substitute(word,'\(\l\|\d\)\(\u\)','\1_\2','g')
  let word = substitute(word,'[.-]','_','g')
  let word = tolower(word)
  execute 'normal ciw'.word
endfunction

command! CamelSnake call s:camelsnake(expand('<cword>'))
command! Camel call s:camelcase(expand('<cword>'))
command! Snake call s:snakecase(expand('<cword>'))

map _ :CamelSnake<CR>
