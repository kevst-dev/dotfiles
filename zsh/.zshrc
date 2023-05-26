# --------------------------- Funciones-zsh ----------------------------
source "$HOME/.dotfiles/zsh/zsh-funciones"

# --------------------------- General ----------------------------
source "$HOME/.dotfiles/zsh/zsh-general-config"

# --------------------------- skim(fuzzy_finder) ----------------------------
source "$HOME/.dotfiles/zsh/fuzzy_finder.sh"

# --------------------------- Prompt ----------------------------
eval "$(starship init zsh)"
# source "$HOME/dotfiles/zsh-config/zsh-prompt.sh"

# --------------------------- Alias ----------------------------
source "$HOME/.dotfiles/zsh/zsh-aliases"

# --------------------------- Autopair ----------------------------
insertar_plugin "hlissner/zsh-autopair"

# --------------------------- Completion ----------------------------
insertar_plugin "marlonrichert/zsh-autocomplete"

# ------------------------- Resaltado de sintaxis --------------------------
insertar_plugin "zsh-users/zsh-syntax-highlighting"

neofetch
