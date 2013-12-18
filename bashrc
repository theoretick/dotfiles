#----------------------------------------------------------------------
# ~/.bashrc
#----------------------------------------------------------------------

source ~/.git-completion

export GITAWAREPROMPT=~/.git-aware-prompt
source $GITAWAREPROMPT/main.sh
#export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export PS1="\n\[\e[0;36m\]┌─(\[\e[0m\]\[\e[1;33m\]\u\[\e[0m\]\[\e[1;36m\]@\[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[0;36m\])─[\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\[\e[0;36m\]]\[\e[0;36m\]-\[\e[0m\]\[\e[0;31m\]\t\[\e[0m\]\[\e[0;36m\]\[\e[0m\]\n\[\e[0;36m\]└─\[\e[0m\]\[\e[1;37m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$\[\e[0m\]\[\e[0;36m\] \[\e[0m\]"

#---

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# define editor
export VISUAL='subl -w'
export EDITOR='vim'

# No duplicate lines in the history
export HISTCONTROL=ignoredups

# Ignore same successive entries.
export HISTCONTROL=ignoreboth

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# add postgres to path
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# add mysql to path
export PATH=$PATH:$(brew --prefix mysql)/bin
