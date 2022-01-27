# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/user/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  colored-man-pages
  dnf
  docker
  docker-compose
  git
  history-substring-search
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias zshconfig="nvim ~/.zshrc"

alias nvimconfig="nvim ~/.config/nvim/init.vim"

alias ohmyzsh="nvim ~/.oh-my-zsh"

alias kittyconf="nvim ~/.config/kitty/kitty.conf"

alias dc='docker-compose -f docker-compose.yml -f docker-compose-dev.yml'
alias dcv='docker-compose'

# alias ssh="kitty +kitten ssh"

alias th="tree . -L 1"

alias br="setxkbmap br"
alias us="setxkbmap us"

alias xuxa="ssh root@192.168.122.11 -A"
alias xuxa1="ssh -A -p10001 root@192.168.122.11"
alias xuxa2="ssh -A -p10002 root@192.168.122.11"
alias xuxa3="ssh -A -p10003 root@192.168.122.11"

alias panic="xrandr --output eDP --auto"
alias xampola="xrandr --output eDP --off"

source $ZSH/oh-my-zsh.sh
