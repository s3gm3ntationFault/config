" autocmd BufReadPre COMMIT_EDITMSG setlocal textwidth=60
" Set tw to 500 if in the first 4 lines, else 500
function! CommitTextWidth()
    if line('.') < 17             " if line number smaller than 5
        setlocal textwidth=50     " use high tw setting
    else
        setlocal textwidth=72      " Otherwise use normal textwidth
    endif
endfunction

" Set commit message text width to 50
autocmd BufReadPre COMMIT_EDITMSG setlocal textwidth=50
" Update commit message width when the curser has moved (only for git commits)
au CursorMovedI COMMIT_EDITMSG call CommitTextWidth()
