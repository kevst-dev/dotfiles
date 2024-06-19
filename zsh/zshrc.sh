#!/bin/zsh

main() {

  # Definiendo el directorio de configuración
  export ZSH_CONFIG_PATH="$HOME"/.dotfiles/zsh

  source "$ZSH_CONFIG_PATH/src/history.sh"
  source "$ZSH_CONFIG_PATH/src/dirs.sh"
  source "$ZSH_CONFIG_PATH/src/plugins.sh"
  source "$ZSH_CONFIG_PATH/src/prompt.sh"
  source "$ZSH_CONFIG_PATH/src/commands.sh"
  source "$ZSH_CONFIG_PATH/src/fuzzy_finder.sh"

  # neofetch
}

main "$@"
