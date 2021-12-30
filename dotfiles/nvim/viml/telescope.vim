"From
" https://github.com/ThePrimeagen/.dotfiles/blob/f98d6fd61c6309710fbec86ad03466250fa3c722/nvim/.config/nvim/plugin/telescope.vim
lua require("rjmccabe")

"nnoremap <leader>rr :lua require('rjmccabe.telescope').refactors()<CR>
"vnoremap <leader>rr :lua require('rjmccabe.telescope').refactors()<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>vrc :lua require('rjmccabe.telescope').search_dotfiles()<CR>
"nnoremap <leader>va :lua require('rjmccabe.telescope').anime_selector()<CR>
"nnoremap <leader>vc :lua require('rjmccabe.telescope').chat_selector()<CR>
nnoremap <leader>gc :lua require('rjmccabe.telescope').git_branches()<CR>
"nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
"nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
"nnoremap <leader>td :lua require('rjmccabe.telescope').dev()<CR>

"nnoremap <C-p> :Files<Cr>
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>
