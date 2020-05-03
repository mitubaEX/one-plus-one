all: setup test

setup:
	git clone https://github.com/thinca/vim-themis.git

test: ./test/one_plus_one.vim
	vim-themis/bin/themis --reporter spec
