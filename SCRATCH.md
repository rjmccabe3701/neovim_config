https://neovimcraft.com/plugin/kyazdani42/nvim-tree.lua
https://www.notonlycode.org/neovim-lua-config/


#Primeagen channel
https://www.youtube.com/channel/UC8ENHE5xdFSwx71u3fDH5Xw


#tjdevries
https://github.com/tjdevries/config_manager.git

#need this for telescope
brew install fd
brew install rg

#From
https://www.notonlycode.org/neovim-lua-config/
look at
nvim-compe



#Packer

A pluing manager in lua
https://github.com/wbthomason/packer.nvim

It puts its plugins here:
 ~/.local/share/nvim/site/pack/packer/

And it looks like it can live along side Plug



# Using :make and sending results to quickfix list
:compiler gcc
:make -C build

This runs synchronously and doesn't require the vim-dispatch plugin

# Linting with the ALE plugin
Seems to work out of the box with C++ and golang


#Terminal integration

gf will open file under cursor

Problem: cannot use my zsh <Esc>vv trick to edit command line
Workaround: open a bufer (via ":new") and edit the command there

Problem: nesting will occur for git commit


#Sessions

:mksession!
This creates a Session.vim file in the cwd. Then you can restore with
vim -S


# Install Issues


 * Need to download the fzf binary when vim starts
 *

# Good references

https://github.com/LunarVim/Neovim-from-scratch
