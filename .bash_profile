# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

if ! [ -n "$TMUX" ]; then
   dbus-run-session sway
fi
