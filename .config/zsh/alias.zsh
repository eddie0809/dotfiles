#############
#  ALIASES  #
#############

# will be integrated to 'dotfiles.sh'
#compdef dotfiles=git

# go to parent
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'

# ls variants
alias l='ls -FAh --group-directories-first'
alias la='ls -lAFh --group-directories-first'
alias lt='ls -lFAht --group-directories-first'
alias lr='ls -RFAh --group-directories-first'

# more ls variants
alias ldot='ls -ld .* --group-directories-first'
alias lS='ls -1FASsh --group-directories-first'
alias lart='ls -1Fcart --group-directories-first'
alias lrt='ls -1Fcrt --group-directories-first'

# ls with different alphabethical sorting
unalias ll
ll() { LC_COLLATE=C ls "$@" }

# suffix aliases
alias -g CP='| xclip -selection clipboard -rmlastnl'
alias -g LL="| less"
alias -g CA="| cat -A"
alias -g KE="2>&1"
alias -g NE="2>/dev/null"
alias -g NUL=">/dev/null 2>&1"

# misc aliases
alias si='sudo -i zsh'
alias se='sudo -e'
alias :q='exit'
alias pg='ping -c 1 8.8.8.8'
alias pc='python -ic "from math import *"'
alias bcl='bc -l'
alias t='tail -f'
alias wa='watch -ctn 2'
alias open='xdg-open'
alias tunnel='ssh -fNTL'
alias neofetch='echo "\\n\\n" && neofetch'
alias grep='grep --color=auto --exclude-dir={.git,.svn,.hg}'
alias egrep='egrep --color=auto --exclude-dir={.git,.svn,.hg}'
alias diff='diff --color=auto'

alias zcfg="vim ~/.zshrc"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias dotfiles='/usr/bin/git --git-dir=/home/etienne/.dotfiles/ --work-tree=/home/etienne'
alias univpn="sudo openconnect vpn.tik.uni-stuttgart.de --user=st160928@stud.uni-stuttgart.de"
alias vimrc="vim ~/.vimrc"
alias i3cfg="vim ~/.config/i3/config"

alias icat="kitty +kitten icat"

alias setoffice="xrandr --output DP-2 --auto --left-of eDP-1 && nitrogen --restore && clear"
alias unsetoffice="xrandr --output DP-2 --off"
alias unfuckoffice="setxkbmap -layout de -option caps:swapescape"

