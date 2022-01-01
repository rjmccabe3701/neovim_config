#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

${DIR}/uninstall.sh
# source ${DIR}/functions.sh
# install_files

#Install Vim plugins
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

ln -sf ${DIR}/dotfiles/nvim ~/.config/nvim
#nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
#nvim --headless -c 'PackerInstall'
echo "TODO: need to run :PackerInstall on first nvim open"


#LSP language servers
pip3 install pyright

