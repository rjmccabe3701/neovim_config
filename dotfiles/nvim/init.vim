" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc
call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

Plug 'scrooloose/nerdcommenter' " commenting shortcuts

" I can't get this damn thing to work, will use nerdtree until I get my
" bearings
"Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'scrooloose/nerdtree'

"For switching windows quickly, it seems kinda buggy, ill revisit
"Plug 'https://gitlab.com/yorickpeterse/nvim-window.git'

"Plug 'ThePrimeagen/vim-be-good'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'

"Best git plugin
Plug 'tpope/vim-fugitive'

"Telescope stuff (works best with ripgrep and fd, do ":checkhealth telescope")
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()

"lua print(vim.inspect(require("shit")))
lua require("rjmccabe")

source ~/.config/nvim/viml/legacy.vim
source ~/.config/nvim/viml/telescope.vim
"source ~/.config/nvim/viml/file_tree_setup.vim

"lua require("config_common")
" lua require("lsp_config")
"lua require("file_tree")
"lua require("misc2")

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
