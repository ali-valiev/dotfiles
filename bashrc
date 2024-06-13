# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep "*")'
PS1='\n\[\033[0;36m\]\u\[\033[0m\]\[\033[0;36m\]@\[\033[0m\]\[\033[0;36m\]\h\[\033[0m\] \[\033[0;32m\]\w\[\033[0m\] \[\033[0;31m\]${PS1_CMD1}\[\033[0m\]\n\$ '
# PS1='[\u@\h \W]\$ '

alias ls="exa"
alias ll="exa -l"
alias la="exa -la"

alias v="nvim"

alias inst="sudo pacman -S"
alias rem="sudo pacman -Rns"
alias update="sudo pacman -Syu"
alias clean="pacman -Qtdq | sudo pacman -Rns -"

alias rs="cd ~/prog/rust/learn/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"
