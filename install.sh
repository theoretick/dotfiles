
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
git config --global user.name "theoretick"
git config --global user.email me@lucascharles.me

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
