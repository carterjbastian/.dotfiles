#!/usr/bin/env bash
#
# Are we up to date as is?
brew update
brew upgrade --all

# Install dev tools
brew install git
brew install openssl
brew install heroku-toolbelt
brew install ack
brew install tree
brew install wget

# Install Python
brew install python
brew install python3

# Install Cask
brew install caskroom/cask/brew-cask

# Install Casks
brew cask install --appdir="/Applications" macdown
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" iterm2

# Install quicklook plugins
# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install "qlcolorcode"
brew cask install "qlimagesize"
brew cask install "qlmarkdown"
brew cask install "qlstephen"
brew cask install "qlvideo"
brew cask install "quicklook-json"
brew cask install "suspicious-package"
brew cask install "webpquicklook"

# Clean up outdated versions
brew cleanup
