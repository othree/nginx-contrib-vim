
MODULES := $(shell find syntax/modules -name '*.vim')

default: syntax/nginx.vim

syntax/nginx.vim: syntax/layout/header.vim syntax/layout/footer.vim $(MODULES)
	cat syntax/layout/header.vim syntax/modules/* syntax/layout/footer.vim > syntax/nginx.vim
