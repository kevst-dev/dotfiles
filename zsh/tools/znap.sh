#!/bin/zsh

##
# Plugin manager
#

local znap_folder=$HOME/.dotfiles/zsh/plugins/zsh-snap
local znap=$HOME/.dotfiles/zsh/plugins/zsh-snap/znap.zsh

# Instala automáticamente Znap si aún no está instalado.
if ! [[ -r $znap ]]; then   # Check if the file exists and can be read.
  git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git $znap_folder
fi

source $znap   # Load Znap.
