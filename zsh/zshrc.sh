#!/bin/zsh

main() {

  export PATH="$HOME/.local/bin:$PATH"

  # Definiendo el directorio de configuración
  export ZSH_CONFIG_PATH="$HOME"/.dotfiles/zsh

  source "$ZSH_CONFIG_PATH/src/history.sh"
  source "$ZSH_CONFIG_PATH/src/config_alias.sh"
  source "$ZSH_CONFIG_PATH/src/prompt.sh"

  source "$ZSH_CONFIG_PATH/src/plugins.sh"

  # neofetch
}

main "$@"
