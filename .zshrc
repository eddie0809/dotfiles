
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' file-sort inode
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' '' '' ''
zstyle :compinstall filename '/home/etienne/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

#
# source ~/.bashrc
alias univpn="gtk-launch com.cisco.secureclient.gui"
alias masterarbeit="cd ~/Documents/uni/theses/master/"
alias modcross="cd ~/Documents/uni/theses/master/entsim/modules/modcross/"
alias gute-nacht="systemctl hibernate"

# Created by `pipx` on 2023-08-05 17:56:12
export PATH="$PATH:/home/etienne/.local/bin"

# adding texlive to path
export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH
export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH

alias dotfiles='/usr/bin/git --git-dir=/home/etienne/.dotfiles/ --work-tree=/home/etienne'

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

