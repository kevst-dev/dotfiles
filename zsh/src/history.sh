#!/bin/zsh

###################################
### Configuración del historial ###
###################################

# Define dónde almacenar el historial.
export HISTFILE=$ZSH_CONFIG_PATH/.zsh_history

# Cuántos comandos se guardarab en el archivo
export SAVEHIST=$(( 100 * 1000 ))

# Cuántos comandos cargará zsh en la memoria.
export HISTSIZE=$(awk "BEGIN { print int(1.2 * $SAVEHIST) }")

# El historial no guardará duplicados.
setopt HIST_IGNORE_ALL_DUPS

# El historial no mostrará duplicados en la búsqueda.
setopt HIST_FIND_NO_DUPS

# Sincronizar automáticamente el historial entre sesiones concurrentes.
setopt SHARE_HISTORY
