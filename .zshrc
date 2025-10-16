# Environment
export PATH=$PATH:$(go env GOPATH)/bin
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=nvim

# Colors for ls
export CLICOLOR=1
export LSCOLORS="ExGxFxdaCxDaDahbadacec"

# Simple and clean prompt
PROMPT='%F{#7daea3}%1~%f %# '

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Aliases
alias n="nvim ."
alias v="nvim"
alias f="fzf --preview 'bat --style=numbers --color=always {}'"
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -a"
alias k="kubectl"
alias lg="lazygit"

# Zinit plugin manager
if [[ ! -f ~/.zinit/bin/zinit.zsh ]]; then
  mkdir -p ~/.zinit && git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
fi
source ~/.zinit/bin/zinit.zsh

# Plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions

# Syntax highlighting colors (Gruvbox Material)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[default]='fg=#d4be98'
ZSH_HIGHLIGHT_STYLES[command]='fg=#7daea3'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#d8a657'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#d3869b'
ZSH_HIGHLIGHT_STYLES[path]='fg=#a9b665'

# Completions
autoload -Uz compinit
compinit
