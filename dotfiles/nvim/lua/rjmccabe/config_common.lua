function Map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function Nmap(shortcut, command)
  Map('n', shortcut, command)
end

function Imap(shortcut, command)
  Map('i', shortcut, command)
end

function Tmap(shortcut, command)
  Map('t', shortcut, command)
end

function Vmap(shortcut, command)
  Map('v', shortcut, command)
end


--Window movements
Nmap("<C-h>", "<C-w>h")
Nmap("<C-j>", "<C-w>j")
Nmap("<C-l>", "<C-w>l")
Nmap("<C-k>", "<C-w>k")
--Window movements in terminal mode
-- TODO: doesn't seem to work
Tmap("<C-h>", "<C-w>h")
Tmap("<C-j>", "<C-w>j")
Tmap("<C-l>", "<C-w>l")
Tmap("<C-k>", "<C-w>k")

--Cycle thru quickfix list
Nmap("[q", ":cn<CR>")
Nmap("]q", ":cp<CR>")

-- Paste over currently selected text without yanking it
Vmap("p", '"_dP')

-- Move text up and down
Map("v", "<C-j>", ":m .+1<CR>==")
Map("v", "<C-k>", ":m .-2<CR>==")
Map("x", "J", ":move '>+1<CR>gv-gv")
Map("x", "K", ":move '<-2<CR>gv-gv")
Map("x", "<C-j>", ":move '>+1<CR>gv-gv")
Map("x", "<C-k>", ":move '<-2<CR>gv-gv")

