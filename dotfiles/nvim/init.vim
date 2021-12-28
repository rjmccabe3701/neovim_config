" set runtimepath+=~/.vim,~/.vim/after
" set packpath+=~/.vim
" source ~/.vimrc
call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

source ~/.config/nvim/viml/file_tree_setup.vim

" lua require("lsp_config")
lua require("file_tree")

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
autocmd BufWritePre *.go lua goimports(1000)
let mapleader = ','
set mouse=a                 " Automatically enable mouse usage


"Easy opening of directories
" From:
" http://stackoverflow.com/questions/1708623/opening-files-in-the-same-folder-as-the-current-file-in-vim
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>


" Copy/paste
set clipboard+=unnamedplus

