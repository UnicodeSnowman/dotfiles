[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh ]] && . /Volumes/TheBellyOfTheWhale/christopher/.nvm/nvm.sh # This loads NVM

# use vi mode
set -o vi

# aliases
alias dropbox='cd ~/Dropbox'
alias ctags="`brew --prefix`/bin/ctags"
alias gpom="git pull origin master"

# scala
SCALA_HOME=/usr/local/Cellar/scala/2.10.3/libexec

# nginx
NGINX_HOME=/usr/local/Cellar/nginx/1.2.7/sbin

export PATH=/usr/local/bin:$PATH:/usr/local/heroku/bin:$SCALA_HOME/bin:$NGINX_HOME

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
