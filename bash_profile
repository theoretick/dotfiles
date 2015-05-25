#----------------------------------------------------------------------
# ~/.bash_profile
#----------------------------------------------------------------------

export PATH=/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

# colorize!
export CLICOLOR=1
export LSCOLORS=Cxfxcxdxbxegedabagacad

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# monkeyhack to include bashrc as well
[[ -r ~/.bashrc ]] && . ~/.bashrc
