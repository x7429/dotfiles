export PROMPT='%B%F{cyan}[%n@%m%f %~%F{cyan}]$%b%f '
export LS_COLORS=$LS_COLORS:'ow=1;34:'

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

setopt autocd extendedglob
setopt prompt_subst

zstyle :compinstall filename '/home/pt/.zshrc'
autoload -Uz compinit
compinit

alias ..='cd ..'
alias ls='ls --color=auto'
alias paci='sudo pacman -S --needed'
alias pacr='sudo pacman -Rns'
alias pacu='sudo pacman -Suy'
alias sudo='sudo '
alias v='nvim'

bindkey "\e[3~" delete-char

cat ~/.cache/wal/sequences
