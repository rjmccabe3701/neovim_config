-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'

  --commenting shortcuts
  use 'scrooloose/nerdcommenter'


  --I can't get this damn thing to work, will use nerdtree until I get my
  --bearings
  --use 'kyazdani42/nvim-web-devicons'
  --use 'kyazdani42/nvim-tree.lua'
  use 'scrooloose/nerdtree'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

   -- use 'ThePrimeagen/vim-be-good'
   use 'ThePrimeagen/harpoon'

   -- Best git plugin
   use 'tpope/vim-fugitive'
   -- Shows if file is modified on the left
   use 'mhinz/vim-signify'
   --------

   -- Telescope stuff (works best with ripgrep and fd, do -- :checkhealth telescope-- )
   use 'nvim-lua/popup.nvim'
   use 'nvim-telescope/telescope.nvim'
   use 'nvim-telescope/telescope-fzy-native.nvim'
   use {
      "nvim-telescope/telescope-frecency.nvim",
      config = function()
         require"telescope".load_extension("frecency")
      end,
      requires = {"tami5/sqlite.lua"}
   }

   --  We recommend updating the parsers on update
    --use 'nvim-treesitter/nvim-treesitter' {'do': ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter'
end)
