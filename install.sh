#!/usr/bin/env bash

# Install everything onto a new machine
echo "Starting Installation..."
echo "Let's get this bread."

PWD_PREFIX="$HOME/.dotfiles"
DOTFILE_MANIFEST="$PWD_PREFIX/manifest"

# Step 0: Get and keep root access to the machine
sudo -v
# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Step 1: Install Xcode Command Line Tools
echo "Installing Xcode command line tools..."
xcode-select --install

# Step 2: install Homebrew and Cask
echo "Installing homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

# Step 3: Homebrew installations
echo "Installing Brewfile apps..."
source "$PWD_PREFIX/Brewfile"

# Step 4: macos defaults in macosdefaults.sh
echo "Setting up system preferences..."
source $PWD_PREFIX/osx.sh

# Step 5: create symlinks for all of my dotfiles
for file in `cat $DOTFILE_MANIFEST`; do
	ln -svf $HOME/$file ~
done

echo "All done - set up successful!"

# Step 6: what can this script not do?
# TODO(carter): find ways to do these things
echo "Here are some things you need to go do by hand:"
echo "\t* Swap control and caps lock"
echo "\t* Sync iMessages"
echo "\t* Put apps in your dock"
