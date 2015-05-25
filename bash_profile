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

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
else
    puterr "rbenv not installed"
    exit 1
fi

# monkeyhack to include bashrc as well
[[ -r ~/.bashrc ]] && . ~/.bashrc
