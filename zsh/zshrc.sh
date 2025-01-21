#!/bin/zsh

main() {

  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  export PATH="$HOME/.local/bin:$PATH"
  export PATH="$HOME/.cargo/bin:$PATH"

  export ZSH_CONFIG_PATH="$HOME"/dotfiles/zsh

  source "$ZSH_CONFIG_PATH/src/history.sh"
  source "$ZSH_CONFIG_PATH/src/config_alias.sh"
  source "$ZSH_CONFIG_PATH/src/prompt.sh"

  source "$ZSH_CONFIG_PATH/src/plugins/init.sh"
  source "$ZSH_CONFIG_PATH/src/fuzzy_finder/init.sh"

  # fastfetch
}

main "$@"
