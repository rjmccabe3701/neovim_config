#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

${DIR}/uninstall.sh

#Install Vim plugins
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir -p ~/.config
ln -sf ${DIR}/dotfiles/nvim ~/.config/nvim
ln -sf ${DIR}/dotfiles/.editorconfig ~/.editorconfig
#nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
#nvim --headless -c 'PackerInstall'
echo "TODO: need to run :PackerInstall on first nvim open"


#LSP language servers
if command -v pip3 > /dev/null
then
   pip3 install pyright
fi

if command -v go > /dev/null
then
   go install -u golang.org/x/tools/gopls@latest
   #TODO: add ~/go/bin to path
fi

case "$(uname -s)" in

   Darwin)
     echo 'Detected MAC'
     brew install llvm
     ;;

   Linux)
     echo 'Detected Linux'
     if command -v sudo > /dev/null; then
        sudo apt-get install clangd clang-tidy \
           ripgrep fd-find \
           sqlite3 libsqlite3-dev
     fi
     ;;
  *)
     echo "Unknown OS"
     ;;
esac
