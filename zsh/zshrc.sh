#!/bin/zsh

main() {

  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/src/config.sh"
  # shellcheck disable=SC1091
  source "$ZSH_CONFIG_PATH/src/history.sh"
  # shellcheck disable=SC1091
  source "$ZSH_CONFIG_PATH/src/dirs.sh"
  # shellcheck disable=SC1091
  source "$ZSH_CONFIG_PATH/src/plugins.sh"
  # shellcheck disable=SC1091
  source "$ZSH_CONFIG_PATH/src/prompt.sh"
  # shellcheck disable=SC1091
  source "$ZSH_CONFIG_PATH/src/commands.sh"
  # shellcheck disable=SC1091
  source "$ZSH_CONFIG_PATH/src/fuzzy_finder.sh"

  # neofetch
}

main "$@"
