#!/bin/zsh

source "$ZSH_CONFIG_PATH/src/utils/check_app.sh"

########################
### Cargar el prompt ###
########################

load_prompt() {
  local name_app="starshipa"

  check_application "$name_app"
  eval "$(starship init zsh)"
}

load_prompt
