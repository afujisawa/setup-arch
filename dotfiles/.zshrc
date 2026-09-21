### ============================================================
### Oh My Zsh setup
### ============================================================

# Path to the Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme disabled: the prompt is handled by oh-my-posh (see bottom of file)
ZSH_THEME=""


### ============================================================
### Plugins
### ============================================================
# Standard plugins live in $ZSH/plugins/
# Custom plugins live in $ZSH_CUSTOM/plugins/ (or ~/.oh-my-zsh/custom/plugins/)

plugins=(
    git                     # git aliases and helpers
    zsh-autosuggestions     # inline command suggestions based on history
    zsh-syntax-highlighting # highlights valid/invalid commands as you type (must stay last)
)

source $ZSH/oh-my-zsh.sh


### ============================================================
### Aliases
### ============================================================

# General
alias c="clear"
alias grep="grep --color=auto"
alias mkdir="mkdir -p"

# Listing
alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ls -lha"


### ============================================================
### Prompt (oh-my-posh)
### ============================================================

eval "$(oh-my-posh init zsh --config ~/.theme/oh-my-posh/poshcat.omp.json)"


### ============================================================
### Tmux auto-attach
### ============================================================
# Automatically attach to (or create) the "Arch" tmux session
# when opening a new interactive shell that isn't already inside tmux

if [[ -z "$TMUX" && -n "$PS1" ]]; then
    exec tmux new-session -A -s "Arch" -n "main"
fi