export ZSH="/home/wei/.oh-my-zsh"
 
ZSH_THEME="robbyrussell"

HIST_STAMPS="mm/dd/yyyy"

plugins=(
    git
    fzf
    vi-mode
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi[
