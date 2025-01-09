#!/bin/zsh

##
# Plugin manager
#

download_zimfw() {
  if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
}

install_plugins() {
  # Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
  if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
    source ${ZIM_HOME}/zimfw.zsh init -q
  fi
}

load_plugin_manager() {
  export ZIM_HOME="$ZSH_CONFIG_PATH/plugins/.zim"
  export ZIM_CONFIG_FILE="$ZSH_CONFIG_PATH/src/plugins/zimrc.sh"

  download_zimfw

  # Initialize modules.
  source ${ZIM_HOME}/init.zsh
}

