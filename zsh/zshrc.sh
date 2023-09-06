#!/bin/zsh

main() {

  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/tools/history.sh"
  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/tools/dirs.sh"
  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/tools/zplug.sh"
  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/tools/prompt.sh"
  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/tools/plugins.sh"
  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/tools/commands.sh"
  # shellcheck disable=SC1091
  source "$HOME/.dotfiles/zsh/tools/fuzzy_finder.sh"

  # neofetch
}

main "$@"
