scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

function! one_plus_one#plus(a, b)
  return a:a + a:b
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
