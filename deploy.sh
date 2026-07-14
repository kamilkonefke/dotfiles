#!/usr/bin/env bash
current_dir=$(pwd)

ln -sf $current_dir/sway ~/.config/
ln -sf $current_dir/emacs/* ~/.emacs.d/

echo DONE!
