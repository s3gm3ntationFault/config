" Use Google Docstring Style
let g:ultisnips_python_style = "google"

"flake8 stuff
" ALE plugin configuration
let g:ale_open_list = 1
let g:ale_echo_cursor = 0
" let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'python': ['flake8']}
let b:ale_fixers = {
\       '*': ['remove_trailing_lines', 'trim_whitespace'],
\	'python': ['autopep8', 'yapf'],
\}
let g:ale_fix_on_save = 1
" Display ale error format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %code%: %s [%severity%]'
" let g:ale_linters = {'python': ['flake8']}
" map <F2> :SyntasticCheck <CR>
" map <F3> :SyntasticToggleMode <CR>
map <F4> :Pydocstring <CR>

" Pydocstring configuration
let g:pydocstring_formatter = 'google'
autocmd BufWritePost * GitGutter

" doq path
let g:pydocstring_doq_path = '/home/jordi/.local/bin/doq'
