
DIR=$(cd "$( dirname "${BASH_SOURCE[0]}")" && pwd)

xcode-select --install

## install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

brew bundle

## Setup Git
ln -s $DIR/gitconfig $HOME/.gitconfig

## git completion

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.git-completion.bash

## Initialize Ruby

brew install chruby

## setup osx settings
bash ./osx-setup

# linkage
ln -s "$DIR/aliases" $HOME/.aliases
ln -s "$DIR/bash_profile" $HOME/.bash_profile
ln -s "$DIR/bashrc" $HOME/.bashrc
ln -s "$DIR/wgetrc" $HOME/.wgetrc
ln -s "$DIR/inputrc" $HOME/.inputrc
ln -s "$DIR/tmux.conf" $HOME/.tmux.conf
ln -s "$DIR/git-aware-prompt" $HOME/.git-aware-prompt
ln -s "$DIR/git-completion" $HOME/.git-completion
ln -s "$DIR/vimrc.after" $HOME/.vimrc
ln -s "$DIR/KeyBindings" $HOME/Library/KeyBindings
