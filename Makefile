default: syntax/nginx.vim

syntax/nginx.vim: syntax/layout/nginx.vim
	cat syntax/layout/nginx.vim | perl -pe 's/^" \@3PARTY/`cat syntax\/modules\/*`/ge' > syntax/nginx.vim
