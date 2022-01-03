"lua print(vim.inspect(require("shit")))
lua require("rjmccabe")

source ~/.config/nvim/viml/legacy.vim

autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"

" Highlight on yank
au TextYankPost * silent! lua vim.highlight.on_yank {timeout=500}

"Basic ctrl-p like functionaity (with telescope)
noremap <C-p> <cmd>Telescope git_files<cr>

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" Show terminal cursor when in normal moode
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

