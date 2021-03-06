#----------------------------------------------------------------------
# ~/.bashrc
#----------------------------------------------------------------------

source ~/.aliases

export GITAWAREPROMPT=~/.git-aware-prompt
source $GITAWAREPROMPT/main.sh

# minimalist prompt with 2 conditional behaviors.
# 1) If in repo, display branchname
# 2) If last ran process exits with status 1, display frowny face
export PS1=" \n\[$txtcyn\]\w \[$txtwht\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\n\[$txtcyn\]\t \[$txtrst\]\`if [ \$? = 0 ]; then echo -e ''; else echo -e '\e[01;31m:( '; fi\`\[$txtrst\]$ "

#---

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# define editor
export EDITOR='vim'

# No duplicate lines in the history
export HISTCONTROL=ignoredups
# Ignore same/successive entries.
export HISTCONTROL=ignoreboth

# add postgres to path
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# Use FZF for Ctrl+R reverse searches
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Eval docker env variables
eval $(docker-machine env)
