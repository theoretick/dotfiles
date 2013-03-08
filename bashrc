################################################
# name: .bashrc
# auth: lucas c
# url:  http://github.com/theoretick/dotfiles
# desc: config file for bash
################################################

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin 

# No duplicate lines in the history
export HISTCONTROL=ignoredups

# Ignore same successive entries.
export HISTCONTROL=ignoreboth

###########

