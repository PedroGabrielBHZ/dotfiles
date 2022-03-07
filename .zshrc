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
  kubectl
  git
  history-substring-search
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

alias zshconfig="vim ~/.zshrc"

alias vimconfig="vim ~/.vimrc"

alias ohmyzsh="vim ~/.oh-my-zsh"

alias kittyconf="vim ~/.config/kitty/kitty.conf"

alias i3config="vim ~/.config/i3/config"

# Watch those whales
alias dc='docker-compose -f docker-compose.yml -f docker-compose-dev.yml'
alias dcv='docker-compose'

# Kitty magic
alias ssh="kitty +kitten ssh"

# Who needs ranger?
alias th="tree . -L 1"

# Layout magic
alias br="setxkbmap br"
alias us="setxkbmap us"

# Remote magic
alias xuxa="ssh root@192.168.122.11 -A"
alias xuxa1="ssh -A -p10001 root@192.168.122.11"
alias xuxa2="ssh -A -p10002 root@192.168.122.11"
alias xuxa3="ssh -A -p10003 root@192.168.122.11"

# Love connection
alias pemba="sshfs -o allow_other root@192.168.122.11:/root/ ~/dev"

# Make it double
alias pindureta="pemba && xuxa"

# Take it easy, my eyes hurt!
alias noitinha="redshift -O 4000K -P &"
alias madruga="redshift -O 3000K -P &"

# Display magic
alias panic="xrandr --output eDP --auto"
alias xampola="xrandr --output eDP --off"

# Bluetooth jazz
alias funk="bluetooth on"
alias jazz="bluetoothctl connect 08:DF:1F:C7:A0:D2"
alias blues="bluetoothctl disconnect 08:DF:1F:C7:A0:D2"

# FUCK!
alias fuck="cd ~/fun/tswtd/twisted-intro/"

# Enter postgres like a suave motherfucker
alias suave="sudo -u postgres -i"
alias bob="psql -d todo_bob -U bob"

# Enter the fucking matrix
alias matrix="ssh pepe@213.219.38.108 -p 69"

# Spy on russia
alias secrets="vi /home/user/.ssh/known_hosts"

source $ZSH/oh-my-zsh.sh
