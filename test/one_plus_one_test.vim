scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

source ./autoload/one_plus_one.vim

function! test() abort
  let v:errors = []

  call execute()
  if len(v:errors) >= 1
    echo v:errors
    " error exit
    cquit!
  endif
  echo 'test success'
  qall!
endfunction

function! execute() abort
  let actual = one_plus_one#plus(1, 2)
  call assert_equal(3, actual)
endfunction

call one_plus_one#test()

let &cpo = s:save_cpo
unlet s:save_cpo
