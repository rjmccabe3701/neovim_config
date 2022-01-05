function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end


--Window movements
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-l>", "<C-w>l")
nmap("<C-k>", "<C-w>k")
--Window movements in terminal mode
-- TODO: doesn't seem to work
tmap("<C-h>", "<C-w>h")
tmap("<C-j>", "<C-w>j")
tmap("<C-l>", "<C-w>l")
tmap("<C-k>", "<C-w>k")

--Cycle thru quickfix list
nmap("[q", ":cn<CR>")
nmap("]q", ":cp<CR>")


--Toggle NvimTree, got this idea from:
--https://github.com/LunarVim/Neovim-from-scratch
nmap("<space>e", ":NvimTreeToggle<cr>")
