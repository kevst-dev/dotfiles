#!/bin/zsh

declare -A PERSONAL_KEYMAPS=(
  # cli tool: fzf
  '<Ctrl-t>' 'fzf: listar archivos y directorios del directorio de actual'
  '<Alt-c> ' 'fzf: listar directorios del directorio de actual y ejecutar cd en la salida'
  '<Ctrl-r>' 'fzf: buscar en el historial de comandos'

  # nvim
)
