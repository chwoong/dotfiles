# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/chw0501/.oh-my-zsh"


ZSH_THEME="agnoster"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    autojump
)

source $ZSH/oh-my-zsh.sh

# hash path name
hash -d OneDrive-ubuntu=/mnt/c/Users/cchhw/'OneDrive - SNU'/ubuntu

# Example aliases
alias s="cd /mnt/c/Users/cchhw/'OneDrive - SNU'/ubuntu"
alias c=clear
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias python=python3
alias men=tldr
alias gs="git status"
alias gc="git commit"
alias v="vim"
alias mv="mv -i"           # -i prompts before overwrite
alias mkdir="mkdir -p"     # -p make parent dirs as needed
alias df="df -h"           # -h prints human readable format

# erase compter name
prompt_context() {
    #if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    #  prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
    #fi
}

