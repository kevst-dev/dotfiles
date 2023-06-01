#!/bin/zsh

##
# Prompt theme
#

if command -v starship >/dev/null; then
  # Starship está instalada
  eval "$(starship init zsh)"
else
  # Starship no está instalada
  echo "La aplicación Starship no está instalada."
  echo "Por favor, instálala para cargar el prompt adecuado."
fi
