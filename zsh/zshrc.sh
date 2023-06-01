#!/bin/zsh

() {

  source "$HOME/.dotfiles/zsh/tools/history.sh"
  source "$HOME/.dotfiles/zsh/tools/dirs.sh"
  source "$HOME/.dotfiles/zsh/tools/znap.sh"
  source "$HOME/.dotfiles/zsh/tools/env.sh"
  source "$HOME/.dotfiles/zsh/tools/prompt.sh"
  source "$HOME/.dotfiles/zsh/tools/plugins.sh"
  source "$HOME/.dotfiles/zsh/tools/commands.sh"
  source "$HOME/.dotfiles/zsh/tools/fuzzy_finder.sh"

  neofetch
} "$@"
