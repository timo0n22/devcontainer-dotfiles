# Environment
export PATH=$PATH:$(go env GOPATH)/bin
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=nvim

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Aliases
alias n="nvim ."
alias v="nvim"
alias ll="ls -l"
alias la="ls -a"
alias k="kubectl"
alias lg="lazygit"
