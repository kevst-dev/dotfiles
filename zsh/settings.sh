#!/bin/bash

# Set/unset ZSH options
setopt INC_APPEND_HISTORY SHARE_HISTORY APPEND_HISTORY
unsetopt BG_NICE
setopt CORRECT EXTENDED_HISTORY MENUCOMPLETE ALL_EXPORT

# Set/unset shell options
setopt notify globdots correct pushdtohome cdablevars autolist
setopt correctall autocd recexact longlistjobs
setopt autoresume histignoredups pushdsilent
setopt autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash

# Autoload ZSH modules when they are referenced
autoload -U history-search-end
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# Set variables
PATH="/usr/local/bin:/usr/local/sbin/:$PATH"
HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=1000
