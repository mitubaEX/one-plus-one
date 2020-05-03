let s:suite = themis#suite('one_plus_one')
let s:assert = themis#helper('assert')

function! s:suite.success_test()
  let actual = one_plus_one#plus(1, 2)
  call s:assert.equals(3, actual)
endfunction
