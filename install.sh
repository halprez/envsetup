#!/usr/bin/env bash

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install my shell stuff (zsh, ohmyzsh and my theme)
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set my custom oh-my-zsh theme
curl -fsSL https://raw.github.com/halprez/myshelltheme/master/halprez.zsh-theme > theme && mv theme ~/.oh-my-zsh/themes/halprez.zsh-theme

# copy zshrc
cp .zshrc ~/

# make zsh my default shell
chsh -s $(which zsh)

# Install Xcode Command Line Tools
xcode-select --install

# Install brew basics (auto-updating)
brew install terminal-notifier
brew tap domt4/autoupdate
brew autoupdate --start --upgrade --cleanup --enable-notifications

# Install iTerm2
brew cask install iterm2

# Install brew essentials.
brew install git
brew install ack
brew install mas

# Install download utilities
brew install wget

# Install fancy shell stuff
brew install httpie
brew install nnn
brew install thefuck
brew install autojump
brew install googler
brew install htop

# Install bash utilities.
brew install shellcheck

# Install Python utlitlies.
brew install python
brew install python@2
brew install pypy
brew install pypy3
brew install ipython
brew install pipenv

# Install other languages.
brew install lua
brew install node
brew install go

# Install network utilities
brew install sshuttle
npm install --global speed-test

# GPG stuff.
brew install gpg
