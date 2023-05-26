#!/bin/bash

# --------------------------- Funciones-zsh ----------------------------
source "$HOME/.dotfiles/zsh/tools.sh"

# --------------------------- General ----------------------------
source "$HOME/.dotfiles/zsh/settings.sh"

# --------------------------- skim(fuzzy_finder) ----------------------------
source "$HOME/.dotfiles/zsh/fuzzy_finder.sh"

# --------------------------- Prompt ----------------------------
eval "$(starship init zsh)"

# --------------------------- Alias ----------------------------
source "$HOME/.dotfiles/zsh/zsh-aliases.sh"

# --------------------------- Autopair ----------------------------
insert_plugin "hlissner/zsh-autopair"

# --------------------------- Completion ----------------------------
insert_plugin "marlonrichert/zsh-autocomplete"

# ------------------------- Resaltado de sintaxis --------------------------
insert_plugin "zsh-users/zsh-syntax-highlighting"

neofetch
