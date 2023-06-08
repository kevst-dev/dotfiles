#!/bin/zsh

declare -A dirs=(
  ["home"]="$HOME"
  ["dotfiles"]="$HOME/.dotfiles"
  ["dotfiles/zsh"]="$HOME/.dotfiles/zsh"
  ["dotfiles/nvim"]="$HOME/.dotfiles/nvim"
)

get_format_keys() {
  local key_dirs

  for key in "${(k)dirs[@]}"; do
    key_dirs+="$key\n"
  done

  echo "$key_dirs"
}

generate_skim_menu() {
  local options_data=$1
  selected_option=$(echo "$options_data" | sk)

  echo ${dirs[$selected_option]}
}

main() {
  local keys=$(get_format_keys)
  local selected=$(generate_skim_menu "$keys")

  cd "$selected"
}
main
