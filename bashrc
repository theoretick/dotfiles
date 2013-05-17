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

# Add Todo.txt to PATH
#PATH=$PATH:$HOME/.todo/

# No duplicate lines in the history
export HISTCONTROL=ignoredups

# Ignore same successive entries.
export HISTCONTROL=ignoreboth

###########
# bash alias configuration
###########

# readability tweaks
alias ll='ls -lah'
alias df='df -h'
alias du='du -h -d 2'
alias grep='grep --color=auto'

# safety tweaks
alias cp='cp -i'
alias rm='rm -i'

# navigability tweaks
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

# other aliases
alias t='$HOME/.todo/todo.sh'

# alias for hub to git
eval "$(hub alias -s)"


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
