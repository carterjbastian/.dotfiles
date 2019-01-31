# Install everything onto a new machine

# Step 0: Get and keep root access to the machine
sudo -v
# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Step 1: Install Xcode Command Line Tools
echo "Installing Xcode command line tools..."
xcode-select --install

# Step 2: install Homebrew and Cask
echo "Installing homebrew..."
curl -sSL https://get.rvm.io | bash -s stable --ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/versions

# Step 3: Homebrew installations
echo "Installing Brewfile apps..."
brew bundle ~/.dotfiles/Brewfile

# Step 4: macos defaults in macosdefaults.sh
echo "Setting up system preferences..."
source ~/.dotfiles/osx.sh

# Step 5: create symlinks for all of my dotfiles
ln -sv "~/.dotfiles/vim/.vimrc" ~

# Step 6: what can this script not do?
# TODO(carter): find ways to do these things
echo "Here are some things you need to go do by hand:"
echo "\t* Swap control and caps lock"
echo "\t* Sync iMessages"
