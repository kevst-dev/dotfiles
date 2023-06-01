#!/bin/zsh

##
# Directorios con nombre
#
# accesos directos para sus directorios favoritos.
hash -d zsh=$ZDOTDIR
hash -d dotfiles=$HOME/.dotfiles

# `hash -d <nombre>=<ruta>` convierte a ~<nombre> en un atajo para <ruta>.
# ¡Puede usar este ~nombre en cualquier lugar donde especifique un directorio, no solo con `cd`!
