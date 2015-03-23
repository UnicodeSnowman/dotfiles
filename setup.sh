#!/bin/bash

for file in $( ls $(dirname $0)/home ); do
    if [ ! -L ~/.$file ]; then
        echo "~/.$file not here, symlinking"
        ln -s $(dirname $0)/home/$file ~/.$file
    else
        echo "$file already exists, deleting and re-linking"
	rm ~/.$file
        ln -s $(dirname $0)/$file ~/.$file
    fi
done
