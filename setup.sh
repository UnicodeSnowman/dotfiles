#!/bin/bash

for file in $( ls $(dirname $0)/home ); do

    FILE_PATH=$(dirname $0)/home/$file

    if [ ! -L ~/.$file ]; then
        echo "~/.$file not here, symlinking"
        ln -s $FILE_PATH ~/.$file
    else
        echo "$file already exists, deleting and re-linking"
        rm ~/.$file
        ln -s $FILE_PATH ~/.$file
    fi
done

TPM_PATH=~/.dotfiles/tpm

if [ ! -d $TPM_PATH ]; then
    git clone https://github.com/tmux-plugins/tpm $TPM_PATH
fi
