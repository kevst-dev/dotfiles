#!/usr/bin/env bash

REVERSE="\x1b[7m"
RESET="\x1b[m"

check_file_exists() {
  local file=$1

  if [ ! -r "$file" ]; then
    echo "File not found: $file"
    exit 1
  fi
}

set_file_and_center() {
  local input=$1

  IFS=':' read -r -a INPUT <<< "$input"
  FILE=${INPUT[0]}
  CENTER=${INPUT[1]}

  if [[ "$input" =~ ^[A-Za-z]:\\ ]]; then
    FILE=$FILE:${INPUT[1]}
    CENTER=${INPUT[2]}
  fi

  if [[ -n "$CENTER" && ! "$CENTER" =~ ^[0-9] ]]; then
    exit 1
  fi
  CENTER=${CENTER/[^0-9]*/}
}

set_file_path() {
  local file=$1

  if [[ "$file" =~ '\' ]]; then
    if [ -z "$MSWINHOME" ]; then
      MSWINHOME="$HOMEDRIVE$HOMEPATH"
    fi
    if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
      MSWINHOME="${MSWINHOME//\\/\\\\}"
      FILE="${file/#\~\\/$MSWINHOME\\}"
      FILE=$(wslpath -u "$FILE")
    elif [ -n "$MSWINHOME" ]; then
      FILE="${file/#\~\\/$MSWINHOME\\}"
    fi
  fi

  FILE="${file/#\~\//$HOME/}"
}

check_bat_installed() {
  if command -v batcat > /dev/null; then
    BATNAME="batcat"
  elif command -v bat > /dev/null; then
    BATNAME="bat"
  fi
}

generate_preview() {
  local file=$1
  local center=$2

  local file_length=${#file}
  local mime=$(file --dereference --mime -- "$file")

  if [[ "${mime:file_length}" =~ binary ]]; then
    echo "$mime"
    exit 0
  fi

  local default_command="highlight -O ansi -l {} || coderay {} || rougify {} || cat {}"
  local cmd=${FZF_PREVIEW_COMMAND:-$default_command}
  cmd=${cmd//{\}/$(printf %q "$file")}

  eval "$cmd" 2> /dev/null | awk -v center="$center" -v reverse="$REVERSE" -v reset="$RESET" '{
    if (NR == center) {
      gsub(/\x1b[[0-9;]*m/, "&" reverse);
      printf("%s%s\n%s", reverse, $0, reset);
    } else {
      printf("%s%s\n", reset, $0);
    }
  }'
}

main() {
  echo "PUE $1"
  set_file_and_center "$1"
  check_file_exists "$FILE"
  set_file_path "$FILE"
  check_file_exists "$FILE"

  if [ -z "$CENTER" ]; then
    CENTER=0
  fi

  check_bat_installed

  if [ -z "$FZF_PREVIEW_COMMAND" ] && [ "${BATNAME:+x}" ]; then
    "${BATNAME}" --style="${BAT_STYLE:-numbers}" --color=always --pager=never \
      --highlight-line="$CENTER" -- "$FILE"
    exit $?
  fi

  generate_preview "$FILE" "$CENTER"
}

main "$@"
