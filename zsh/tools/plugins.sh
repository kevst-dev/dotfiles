#!/bin/zsh

##
# Plugins
#

zplug "marlonrichert/zsh-autocomplete" # Completado en tiempo real
zplug "zsh-users/zsh-autosuggestions"       # Sugerencias en línea
zplug "zsh-users/zsh-syntax-highlighting"   # Resaltado de sintaxis en la línea de comandos
zplug "softmoth/zsh-vim-mode"               # Vim atajos de teclado

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -r; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Vim config

# shellcheck disable=SC2034
MODE_CURSOR_VIINS="blinking bar white" # insert mode
# shellcheck disable=SC2034
MODE_CURSOR_VICMD="orange block" # normal mode
# shellcheck disable=SC2034
MODE_CURSOR_REPLACE="#ffffff underline" # replace mode

# shellcheck disable=SC2034
MODE_CURSOR_SEARCH="#00ff00 steady underline"
# shellcheck disable=SC2034
MODE_CURSOR_VISUAL="gray steady bar" # visual mode
# shellcheck disable=SC2034
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL green"
