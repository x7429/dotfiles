export LS_COLORS='ow=1;34:'
export PATH=$PATH:~/.local/bin

export PROMPT='%B%U%F{#00FFFF}%n%f%u: [%~]$%b '
export RPROMPT='%(?.%F{#50C878}√.%F{#DC143C}%?)'

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

setopt autocd extendedglob
setopt prompt_subst

zstyle :compinstall filename '/home/pt/.zshrc'
autoload -Uz compinit
compinit

alias ..='cd ..'
alias clone='git clone'
alias ls='ls --color=auto'
alias paci='sudo pacman -S --needed'
alias pacr='sudo pacman -Rns'
alias pacu='sudo pacman -Suy'
alias sudo='sudo '
alias v='nvim'

bindkey "\e[3~" delete-char

cat ~/.cache/wal/sequences
