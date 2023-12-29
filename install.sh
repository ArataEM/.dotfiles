#!/usr/bin/env bash
if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="nvim,tmux"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/Projects/.dotfiles
fi

# STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES $DOTFILES/install

pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D -t ~/ $folder 2> /dev/null
    stow -t ~/ $folder
done
popd
