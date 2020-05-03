.PHONY: test

all: setup test

setup:
	git clone https://github.com/thinca/vim-themis.git

test:
	vim-themis/bin/themis --reporter spec
