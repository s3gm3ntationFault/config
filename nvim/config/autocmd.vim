" Auto strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e
