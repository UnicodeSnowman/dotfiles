
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh ]] && . /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh # This loads NVM

# aliases
alias dropbox='cd ~/Dropbox'
alias ctags="`brew --prefix`/bin/ctags"

# scala
SCALA_HOME=/usr/local/Cellar/scala/2.10.3/libexec

# nginx
NGINX_HOME=/usr/local/Cellar/nginx/1.2.7/sbin

PATH=$PATH:$SCALA_HOME/bin:$NGINX_HOME

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

# Load in .bash_prompt --------------------------------------------
if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

# load command line functions -------------------------------------
if [ -f ~/.functions ]; then
    source ~/.functions
fi

# load bash_completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# ☃ 
