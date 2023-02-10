function! Runc()
	execute "!gcc % && ./a.out"
endfunction

command Runc :call Runc()
