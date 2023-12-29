##############
#  ZPROFILE  #
##############

# profile
[[ -f ~/.profile ]] \
    && source ~/.profile

#################
# ENV VARIABLES #
#################

# zsh
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export ZSH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export ZSH_CUSTOM="$ZSH_CONFIG/custom"

# GPG
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# ICEauthority
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority

# python
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc.py"

# input
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

# z (cd alternative)
export _Z_DATA="$XDG_DATA_HOME/z"

# TeXlive
## Add TeXlive to PATH
export MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH
export PATH=/usr/local/texlive/2023/bin/x86_64-linux:$PATH
## TeXlive font cache to .cache
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
