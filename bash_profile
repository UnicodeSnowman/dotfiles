
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh ]] && . /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh # This loads NVM

# prompt: \m/
PS1="\[$(tput setaf 666)\]\w \$ \[$(tput sgr0)\]"


# for file in ~/.{functions}; do
#   source "$file"
# done

$export PATH="~/.local/bin:usr/local/heroku/bin:$HOME/.rvm/bin:/usr/local/sbin:$PATH"


# -----------------------------------------------------------------
#
# Oh snap it's some python shit...
#
# -----------------------------------------------------------------
if [ -d ~/.local/bin ]; then
  export PATH=~/.local/bin:$PATH
fi

# Python path -----------------------------------------------------
if [ -d ~/.local/lib/python2.7/site-packages ]; then
  export PYTHONPATH=~/.local/lib/python2.7/site-packages:$PYTHONPATH
fi

# Load in .bashrc -------------------------------------------------
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# load command line functions -------------------------------------
if [ -f ~/.functions ]; then
    source ~/.functions
fi

# ☃ 
