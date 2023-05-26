#!/bin/bash

CONFIG_DIR="$HOME/.dotfiles/zsh"

# Insertar archivos si existen
function source_file() {
    local file_path="$CONFIG_DIR/$1"
    [ -f "$file_path" ] && source "$file_path"
}

function insert_plugin() {
    local plugin_name="${1#*/}"
    local plugin_dir="$CONFIG_DIR/plugins/$plugin_name"

    if [ -d "$plugin_dir" ]; then
        source_file "plugins/$plugin_name/$plugin_name.plugin.zsh" ||
        source_file "plugins/$plugin_name/$plugin_name.zsh"
    else
        git clone "https://github.com/$1.git" "$plugin_dir"
    fi
}
