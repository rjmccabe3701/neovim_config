
TelescopeMapArgs = TelescopeMapArgs or {}

local map_tele = function(key, f, options, buffer)
  local map_key = vim.api.nvim_replace_termcodes(key .. f, true, true, true)

  --print("map key = " .. map_key)
  TelescopeMapArgs[map_key] = options or {}

  local mode = "n"
  local rhs = string.format("<cmd>lua require('rjmccabe.telescope')['%s'](TelescopeMapArgs['%s'])<CR>", f, map_key)

  local map_options = {
    noremap = true,
    silent = true,
  }

  if not buffer then
    vim.api.nvim_set_keymap(mode, key, rhs, map_options)
  else
    vim.api.nvim_buf_set_keymap(0, mode, key, rhs, map_options)
  end
end

map_tele("<space>ff", "curbuf")

---- Search
--map_tele("<space>gw", "grep_string", {
  --short_path = true,
  --word_match = "-w",
  --only_sort_text = true,
  --layout_strategy = "vertical",
  --sorter = sorters.get_fzy_sorter(),
--})
--map_tele("<space>f/", "grep_last_search", {
  --layout_strategy = "vertical",
--})

---- Files
map_tele("<space>ft", "git_files")
map_tele("<space>fg", "live_grep")
--map_tele("<space>fg", "multi_rg")
map_tele("<space>fo", "oldfiles")
map_tele("<space>fd", "fd")
map_tele("<space>fe", "file_browser")
map_tele("<space>fz", "search_only_certain_files")

---- Git
map_tele("<space>gs", "git_status")
map_tele("<space>gc", "git_commits")

---- Nvim
map_tele("<space>fb", "buffers")
map_tele("<space>fi", "search_all_files")
map_tele("<space>ff", "curbuf")
map_tele("<space>fh", "help_tags")
map_tele("<space>bo", "vim_options")
map_tele("<space>gp", "grep_prompt")

---- Telescope Meta
map_tele("<space>fB", "builtin")


--"nnoremap <leader>rr :lua require('rjmccabe.telescope').refactors()<CR>
--"vnoremap <leader>rr :lua require('rjmccabe.telescope').refactors()<CR>
--nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
--nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
--nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

--nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
--nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
--nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
--nnoremap <leader>vrc :lua require('rjmccabe.telescope').search_dotfiles()<CR>
--"nnoremap <leader>va :lua require('rjmccabe.telescope').anime_selector()<CR>
--"nnoremap <leader>vc :lua require('rjmccabe.telescope').chat_selector()<CR>
--nnoremap <leader>gc :lua require('rjmccabe.telescope').git_branches()<CR>
--"nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>
--"nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>
--"nnoremap <leader>td :lua require('rjmccabe.telescope').dev()<CR>

--"nnoremap <C-p> :Files<Cr>
--"nnoremap <leader>ff <cmd>Telescope find_files<cr>
--"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
--"nnoremap <leader>fb <cmd>Telescope buffers<cr>
--"nnoremap <leader>fh <cmd>Telescope help_tags<cr>
