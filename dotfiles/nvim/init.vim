"lua print(vim.inspect(require("shit")))
lua require("rjmccabe")

source ~/.config/nvim/viml/legacy.vim

autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"

" Highlight on yank
au TextYankPost * silent! lua vim.highlight.on_yank {timeout=500}

"Basic ctrl-p like functionaity (with telescope)
noremap <C-p> <cmd>Telescope git_files<cr>

