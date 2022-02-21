local _ = vim.cmd [[
let g:nvim_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
]]
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback
require'nvim-tree'.setup{
   hijack_cursor        = false,
   view = {
      mappings = {
         custom_only = false,
         list = {
            { key = { "<CR>", "o" }, cb = tree_cb "edit" },
            { key = "h", cb = tree_cb "close_node" },
            { key = "v", cb = tree_cb "vsplit" },
         }
      },
      auto_resize = true
   },
   --show_icons = {
     --git = 1,
     --folders = 0,
     --files = 1,
     --folder_arrows = 0,
  --},
}
