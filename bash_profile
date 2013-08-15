#----------------------------------------------------------------------
# ~/.bash_profile
#----------------------------------------------------------------------

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

# include aliases
source ".aliases"

# colorize!
export CLICOLOR=1
export LSCOLORS=Cxfxcxdxbxegedabagacad

# monkeyhack to include bashrc as well
[[ -r ~/.bashrc ]] && . ~/.bashrc

