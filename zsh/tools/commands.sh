#!/bin/zsh

##
# Commands, funtions and aliases
#

# / ---- zoxide ---- /

export ZOXIDE_HOME="$HOME/.local/opt/zoxide"
export PATH="$PATH:$ZOXIDE_HOME/bin"
eval "$(zoxide init zsh)"

alias cd='z'

# / ---- exa ---- /

alias l='exa -l'
alias la='exa -la '
alias t='exa --tree --git-ignore'

# / ---- code editor ---- /

alias v='nvim'

# / ---- bat ---- /

alias cat='bat'

# / ---- joshuto ---- /

alias f='joshuto'

# / ---- git ---- /

alias g='git'
alias gst='git status'
alias gc='git commit'
alias ga='git add'
alias gpl='git pull'
alias gpom='git pull origin master'
alias gpu='git push'
alias gpuom='git push origin master'
alias gd='git diff'
alias gch='git checkout'
alias gnb='git checkout -b'
alias gac='git add . && git commit'
alias grs='git restore --staged .'
alias gre='git restore'
alias gr='git remote'
alias gcl'git clone'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gl="glg -5"
alias gt='git ls-tree -r master --name-only'
alias grm='git remote'
alias gb='git branch'
alias gm='git merge'
alias gf='git fetch'

# / ---- tools ---- /
alias clear-node='find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;'
