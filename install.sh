
# xcode-select --install

## install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# install brews with Brewfile
brew tap homebrew/boneyard
brew bundle

# install casks with Caskfile
brew bundle Caskfile

## Setup Git
ln -s "$(pwd)/gitconfig" $HOME/.gitconfig

## git completion

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

## Initialize Ruby

if which rbenv > /dev/null; then
    eval "$(rbenv init -)";
else
    puterr "rbenv not installed"
    exit 1
fi

rbenv install 2.1.2 --skip-existing
rbenv global 2.1.2
gem update --system
gem install bundler
rbenv rehash

## setup osx settings
bash ./osx-setup

## linkage
ln -s "$(dirname $0)/aliases" $HOME/.aliases
ln -s "$(dirname $0)/bash_profile" $HOME/.bash_profile
ln -s "$(dirname $0)/bashrc" $HOME/.bashrc
ln -s "$(dirname $0)/wgetrc" $HOME/.wgetrc
ln -s "$(dirname $0)/inputrc" $HOME/.inputrc
ln -s "$(dirname $0)/tmux.conf" $HOME/.tmux.conf
ln -s "$(dirname $0)/git-aware-prompt" $HOME/.git-aware-prompt
ln -s "$(dirname $0)/git-completion" $HOME/.git-completion

ln -s "$(dirname $0)/KeyBindings" $HOME/Library/KeyBindings
