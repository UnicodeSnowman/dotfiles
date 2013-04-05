
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh ]] && . /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh # This loads NVM

for file in ~/.{functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

for file in ~/.{bashrc,functions,bash_prompt}; do
    source "$file"
done

#PS1=\h:\W \u ☃ 
