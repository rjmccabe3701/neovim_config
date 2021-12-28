#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

${DIR}/uninstall.sh
# source ${DIR}/functions.sh
# install_files

#Install Vim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -sf ${DIR}/dotfiles/nvim ~/.config/nvim
