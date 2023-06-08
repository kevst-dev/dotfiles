# Esta es la configuracion de skim

# Importando los scripts oficiales de skim
source "/usr/share/skim/key-bindings.zsh"
source "/usr/share/skim/completion.zsh"

# ---- Teclas de acceso  ----

# < CTRL-t >: Encontrar todos los archivos y subdirectorios
# del directorio de trabajo, la selección pasa a STDOUT

# < ALT-c >: Encontrar todos los subdirectorios del
# directorio de trabajo, y ejecutar el comando cd en la
# salida como argumento

# < CTRL-r >: Encontrar a través de su historial de shell,
# y desate la selección a STDOUT

# ---- Teclas de desplazamiento ----

# < CTRL-k >: Moverse hacia arriba
# < CTRL-j >: Moverse hacia abajo

# ---- omitir archivos git ----

SKIM_DEFAULT_COMMAND="fd --type f || git ls-tree -r --name-only HEAD || rg --files || find ."

# ---- Script directorios frecuentes ----

dirs_options() {
  source $HOME/.dotfiles/zsh/tools/sk_scripts/dirs.sh
}

# Asignar el atajo de teclado Ctrl+E para ejecutar dirs_options
zle -N dirs_options
bindkey '^E' dirs_options
