let s:suite = themis#suite('one_plus_one')
let s:assert = themis#helper('assert')

" The function name(my_test_1) will be a test name.
function! s:suite.my_test_1()
  let actual = one_plus_one#plus(1, 2)
  call s:assert.equals(3, actual)
endfunction
