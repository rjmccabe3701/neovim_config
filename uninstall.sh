#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

rm -f ~/.config/nvim
rm -rf ${XDG_DATA_HOME:-$HOME/.local/share}/nvim
