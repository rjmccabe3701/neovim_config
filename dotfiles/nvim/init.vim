"lua print(vim.inspect(require("shit")))
lua require("rjmccabe")

source ~/.config/nvim/viml/legacy.vim

"TODO: get lsp to work
"autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
"autocmd BufWritePre *.go lua goimports(1000)

"https://gitlab.com/yorickpeterse/nvim-window
" <leader>-w
"lua require('nvim-window').setup({normal_hl = 'BlackOnLightYellow', hint_hl = 'Bold', border = 'single' })
"map <silent> <leader>w :lua require('nvim-window').pick()<CR>

autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"

" Highlight on yank
au TextYankPost * silent! lua vim.highlight.on_yank {timeout=500}

lua << EOF
require'lspconfig'.pyright.setup{}
EOF
