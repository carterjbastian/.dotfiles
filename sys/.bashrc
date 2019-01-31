###############################################################################
# Local bashrc which outsources to function-specific config files

echo "===== Let's get this bread ====="
for DOTFILE in `find ~/dotfiles/sys | grep -v .bashrc`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done


# MISC to move:
: ${EDITOR:=vim}
