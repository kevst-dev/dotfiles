#!/bin/zsh

##
# Plugin manager
#

download_zplug() {
  local zplug_folder=$1

  # Descarga automáticamente Znap si aún no lo está.
  if ! [[ -r "$zplug_folder" ]]; then
    git clone "https://github.com/zplug/zplug" "$zplug_folder"
  fi
}

define_plugins() {
  zplug "marlonrichert/zsh-autocomplete"      # Completado en tiempo real
  zplug "zsh-users/zsh-autosuggestions"       # Sugerencias en línea
  zplug "zsh-users/zsh-syntax-highlighting"
  zplug "softmoth/zsh-vim-mode"               # Vim atajos de teclado
}

install_plugins() {
  # Install plugins if there are plugins that have not been installed
  if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -r; then
      echo; zplug install
    fi
  fi

  zplug load --verbose
}

load_plugin_manager() {
  local zplug_folder
  local zplug

  zplug_folder="$ZSH_CONFIG_PATH"/plugins/zplug
  zplug="$zplug_folder"/init.zsh

  download_zplug "$zplug_folder"

  echo "$zplug"
}

# shellcheck disable=SC1090
source "$(load_plugin_manager)"   # Load zplug

define_plugins
install_plugins

source "$ZSH_CONFIG_PATH"/src/plugins_config/init.sh
