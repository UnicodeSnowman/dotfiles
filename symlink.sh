#!/bin/bash

#for file in bashrc bash_profile bash_prompt functions tmux.conf git-completion.bash gitconfig; do
#    if [ ! -f ~/.$file ]; then
#        echo "$file not here, symlinking"
#        #echo $(dirname $0)/$file
#        ln -s $(dirname $0)/$file ~/.$file
#    else
#        echo "$file already exists"
#    fi
#done

for file in $( ls . ); do
    echo $file
done

#ln -s $(dirname $0)/somefile ~/.somefile

