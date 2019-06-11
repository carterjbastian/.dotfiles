###############################################################################
# Local bashrc which outsources to function-specific config files

echo "===== Let's get this bread ====="
for DOTFILE in `find $HOME/.dotfiles/sys | grep -E -v ".bash(rc|_profile)" | grep -v ".inputrc"`
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done
