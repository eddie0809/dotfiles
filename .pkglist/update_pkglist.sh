#!/bin/sh

# Saves lists of packages to three different files
# aur: explicitly installed aur packages (i.e. with yay -S <package>)
# pacman: explicitly installed arch packages (i.e. with pacman -S[yu] <package>
# pacman-all: all packages and dependencies
pacman -Qqem > "$HOME/.pkglist/aur"
pacman -Qqen > "$HOME/.pkglist/pacman"
pacman -Qqn  > "$HOME/.pkglist/pacman-all"

# commits them to dotfiles

# exec dotfiles add $HOME/.pkglist/*
# exec dotfiles commit -m "Backup list of installed packages $(date +%Y-%m-%d_%H:%M)"
