#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if Homebrew is already installed..."; 

# Checks if Homebrew is installed
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is already installed...";
fi

# Install the essential brews
## utilities
brew install gh
brew install git
brew install tree
brew install zsh
brew install thefuck
brew install htop
brew install task

## development
brew install go
brew install node
brew install python
brew install ansible
brew install docker 
brew install kubernetes-cli
brew tap mongodb/brew
brew install --HEAD colima

## custom
brew tap jenish-jain/tap
brew install jenish-jain/tap/sidekick

# Install essential casks

## development
# brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask sourcetree
brew install --cask sublime-text
brew install --cask slack
brew install --cask postman
brew install --cask google-cloud-sdk

## entertainment
brew install --cask spotify

# Update and Upgrade
echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade

# Remove outdated versions from the cellar
brew cleanup