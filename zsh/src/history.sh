#!/bin/zsh

##
# Configuración del historial

# Habilitar operadores de globs adicionales. (Globbing = coincidencia de patrones)
# https://zsh.sourceforge.io/Doc/Release/Expansion.html#Filename-Generation
setopt EXTENDED_GLOB

# Indica a Zsh dónde almacenar el historial.
HISTFILE=$HOME/.dotfiles/zsh/zhistory

# Número máximo de entradas a mantener en el archivo del historial.
SAVEHIST=$(( 100 * 1000 ))      # Utilizamos la multiplicación para mayor legibilidad.

# Número máximo de entradas de historial a mantener en memoria.
HISTSIZE=$(awk "BEGIN { print int(1.2 * $SAVEHIST) }")

# Utilizar mecanismos modernos de bloqueo de archivos, para mayor seguridad y rendimiento.
setopt HIST_FCNTL_LOCK

# Mantener solo la copia más reciente de cada entrada duplicada en el historial.
setopt HIST_IGNORE_ALL_DUPS

# Sincronizar automáticamente el historial entre sesiones concurrentes.
setopt SHARE_HISTORY
