#!/usr/bin/env bash
current_dir=$(pwd)

ln -sf $current_dir/sway ~/.config/
ln -sf $current_dir/foot ~/.config/
ln -sf $current_dir/nvim ~/.config/
ln -sf $current_dir/emacs/* ~/.emacs.d/
ln -sf $current_dir/.bashrc ~/

echo DONE!
