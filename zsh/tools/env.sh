#!/bin/zsh

##
# Environment variables
#

# -U asegura que cada entrada en estas variables
# sea única (es decir, descarta duplicados).
export -U PATH path FPATH fpath MANPATH manpath

# -T crea un par "atado"; ver más abajo.
export -UT INFOPATH infopath

# $PATH y $path (y también $FPATH y $fpath, etc.) están "atados" entre sí.
# Modificar uno también modificará el otro.
# Ten en cuenta que cada valor en un arreglo se expande por separado.
# Así, podemos usar ~ para $HOME en cada entrada de $path.
path=(
    $path
    ~/.local/bin
)

# Agrega tus funciones a tu $fpath para poder cargarlas automáticamente.
fpath=(
    $ZDOTDIR/functions
    $fpath
)
