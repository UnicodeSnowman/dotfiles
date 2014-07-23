[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# use vi mode
set -o vi

# aliases
alias dropbox='cd ~/Dropbox'
alias ctags="`brew --prefix`/bin/ctags"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# git commands 
# (TO DO break out check for git into function, as I'm using this in bash_prompt too)
if [ $(git rev-parse --is-inside-work-tree &>/dev/null; printf "%s" $?) == 0 ]; then
    alias gpcb="git pull origin $(printf "$(git symbolic-ref --quiet --short HEAD)")"
    alias gs="git status"
fi

# scala
SCALA_HOME=/usr/local/Cellar/scala/2.10.3/libexec

# nginx
NGINX_HOME=/usr/local/Cellar/nginx/1.2.7/sbin

# postgres
POSTGRES_HOME=/Applications/Postgres93.app/Contents/MacOS/bin/

export PATH=/usr/local/bin:$PATH:/usr/local/heroku/bin:$SCALA_HOME/bin:$NGINX_HOME:$POSTGRES_HOME

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
