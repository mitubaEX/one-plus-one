scriptencoding utf-8

if exists('g:loaded_one_plus_one')
    finish
endif
let g:loaded_one_plus_one = 1

let s:save_cpo = &cpo
set cpo&vim

function! one_plus_one#plus(a, b)
  return a:a + a:b
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
