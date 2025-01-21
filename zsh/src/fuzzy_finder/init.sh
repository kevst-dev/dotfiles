#!/bin/zsh

source "$ZSH_CONFIG_PATH/src/utils/check_app.sh"

#####################################
### Configuración de fuzzy finder ###
#####################################

# Cargando los scripts oficiales de fzf
# NOTA: Esto depende de la distro Linux

# source "/usr/share/fzf/key-bindings.zsh"
source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.zsh"
#source "/usr/share/fzf/completion.zsh"
source "/home/linuxbrew/.linuxbrew/opt/fzf/shell/completion.zsh"

# ---- Teclas de acceso  ----

check_application "fzf"

# < CTRL-t >: Encontrar todos los archivos y subdirectorios
# del directorio de trabajo, la selección pasa a STDOUT

export FZF_CTRL_T_OPTS="
  --height 40% \
  --layout reverse \
  --border sharp \
  --prompt '∷ ' \
  --pointer ▶ \
"

# < ALT-c >: Encontrar todos los subdirectorios del
# directorio de trabajo, y ejecutar el comando cd en la
# salida como argumento

export FZF_ALT_C_OPTS="
  --height 40% \
  --layout reverse \
  --border sharp \
  --prompt '∷ ' \
  --pointer ▶ \
"

# < CTRL-r >: Encontrar a través de su historial de shell,
# y desate la selección a STDOUT

export FZF_CTRL_R_OPTS="
  --height 40% \
  --layout reverse \
  --border sharp \
  --prompt '∷ ' \
  --pointer ▶ \
"

# ---- Teclas de desplazamiento ----

# < CTRL-k >: Moverse hacia arriba
# < CTRL-j >: Moverse hacia abajo

# ---- Script directorios frecuentes ----

fzf_keymaps() {
  source "$ZSH_CONFIG_PATH/src/fuzzy_finder/keymaps_data.sh"

  local keymaps_list
  for k in ${(k)PERSONAL_KEYMAPS}; do
    keymaps_list+="$k -> ${PERSONAL_KEYMAPS[$k]}\n"
  done

  local fzf_options="
    --height 40% \
    --layout reverse \
    --border sharp \
    --prompt '∷ ' \
    --pointer ▶ \
  "
  export FZF_DEFAULT_OPTS="${fzf_options}"

  local selected
  select=$(echo -e "$keymaps_list" | fzf)
  # en este caso no se hace nada con el resultado
}

# fzf_keymaps
# Asignar el atajo de teclado Ctrl+E para ejecutar dirs_options
# zle -N dirs_options
# bindkey '^E' dirs_options
