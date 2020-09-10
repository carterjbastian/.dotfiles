# Just include my .bashrc file
# include .bashrc if it exists
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/opt/mongodb@3.6/bin:$PATH"
export PATH="/Users/carterbastian/.ebcli-virtual-env/executables:$PATH"
export PATH="/Users/carterbastian/.pyenv/versions/3.7.2/bin:$PATH"

if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi

