#!/bin/zsh

##
# Plugin manager
#

zplug_folder="$HOME"/.dotfiles/zsh/plugins/zplug
zplug="$zplug_folder"/init.zsh

# Instala automáticamente Znap si aún no está instalado.
if ! [[ -r "$zplug_folder" ]]; then   # Check if the file exists and can be read.
  git clone "https://github.com/zplug/zplug" "$zplug_folder"
fi

# shellcheck disable=SC1090
source "$zplug"   # Load zplug.
