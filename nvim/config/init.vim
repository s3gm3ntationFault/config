"Setup main configuration

"GENERAL CONFIG
" Enable copy to clipboard
set clipboard=unnamedplus
" Enable line numbers by default
set number
" Enable mouse for vim
set mouse=a

"fzf config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let mapleader = " "
nnoremap <leader>gc :GCheckout<CR>

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:UltiSnipsSnippetDirectories = ['/home/jordi/.vim/vim-snippets']
" Autoclose preview windows from youcompleteme
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_server_python_interpreter = '/usr/bin/python3'

" vim Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline#extensions#tabline#buffer_nr_show = 1

" Autohandle swap files
set title titlestring=
" Enable autoswap for tmux
let g:autoswap_detect_tmux = 1

" Git shortcuts
nmap <leader>gl :diffget //3<CR>
nmap <leader>gr :diffget //2<CR>
nmap <leader>gs :G<CR>
