
# prompt: \m/
PS1="\[$(tput setaf 666)\]\w \$ \[$(tput sgr0)\]"

# Add RVM to PATH for scripting
# Add /usr/local/sbin, for nginx
# PATH=$PATH:$HOME/.rvm/bin:/usr/local/sbin

export PATH="/usr/local/heroku/bin:$HOME/.rvm/bin:/usr/local/sbin:$PATH"
