#----------------------------------------------------------------------
# ~/.bashrc
#----------------------------------------------------------------------

source ~/.git-completion

export GITAWAREPROMPT=~/.git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

#---

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
# Add Heroku Toolbelt to path
export PATH="/usr/local/heroku/bin:$PATH"

# define editor
export VISUAL='subl -w'
export EDITOR='vim'

# No duplicate lines in the history
export HISTCONTROL=ignoredups

# Ignore same successive entries.
export HISTCONTROL=ignoreboth

