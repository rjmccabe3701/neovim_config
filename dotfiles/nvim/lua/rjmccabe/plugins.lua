-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'

  --commenting shortcuts
  use {
     'numToStr/Comment.nvim',
     config = function()
        require('Comment').setup()
     end
  }

  use {
     'kyazdani42/nvim-tree.lua',
     --Too fucking hard to setup and doesn't work over SSH (with putty)
     --requires = {
        --'kyazdani42/nvim-web-devicons', -- optional, for file icon
     --},
     config = function() require'nvim-tree'.setup {} end
  }

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

   -- use 'ThePrimeagen/vim-be-good'
   use 'ThePrimeagen/harpoon'

   -- Best git plugin
   use 'tpope/vim-fugitive'

   use 'tpope/vim-surround'

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
    use {
       'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate'
    }

    use 'easymotion/vim-easymotion'

    -- Good colorscheme
    use 'morhetz/gruvbox'

    --Autocompletion stuff
    --use 'nvim-compe'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use {
       'junegunn/fzf' , run = 'fzf#install()'
    }

    use 'w0rp/ale'

    -- Use ":Obsession" to start tracking session (":Obsession!" to stop).
    --  re-open session with vim -S
    use 'tpope/vim-obsession'

    -- Automatically configures formatting via a ~/.editorconfig file
    --  (or .editorconfig in a local directory)
    use 'sgur/vim-editorconfig'
end)
