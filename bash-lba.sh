# ==============================================================================
# LBA — Logical Bash Aliases
# https://github.com/rockberpro/bash-lba
#
# Install:
#   curl -sL https://raw.githubusercontent.com/rockberpro/bash-lba/main/setup.sh | bash
#
# Manual install:
#   echo 'source ~/.bash-lba.sh' >> ~/.bashrc && source ~/.bashrc
# ==============================================================================

# --- NAVIGATION ---
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias bk='cd -'

# --- LISTING ---
alias ll='ls -la'
alias la='ls -A'
alias lt='ls -lAt'
alias lz='ls -lAS'

# --- FILE OPERATIONS ---
alias mk='mkdir'
alias mkp='mkdir -p'
alias rm='rm -i'
alias cpr='cp -r'

# --- SYSTEM ---
alias cl='clear'
alias hi='history'
alias psa='ps aux'
alias psg='ps aux | grep'

# --- NETWORK ---
alias pi='ping'

# --- GREP ---
alias gr='grep'
alias gri='grep -i'
alias grr='grep -r'

# --- FILE SEARCH ---
alias fd='find . -name'
alias fdi='find . -iname'

# --- DISK ---
alias df='df -h'
alias du='du -h'
alias dul='du -sh *'

# --- PROCESS ---
alias kl='kill'
alias kl9='kill -9'

# --- TEXT ---
alias ct='cat'
alias hd='head'
alias tl='tail'
alias tlf='tail -f'

# --- ENVIRONMENT ---
alias ev='env'
alias evg='env | grep'

# --- HELP ---
alias lba='~/.bash-lba-help.sh'
