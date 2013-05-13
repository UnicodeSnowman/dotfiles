

# Add RVM to PATH for scripting
# Add /usr/local/sbin, for nginx
# PATH=$PATH:$HOME/.rvm/bin:/usr/local/sbin

# Lots of virtual environment setup shenanigans for python/django
#
# running 'mkvirtualenv foobar' will create virtual env at 
# ~/sites/env/foobar
#
# Locate virtualenvwrapper binary
if [ -f ~/.local/bin/virtualenvwrapper.sh ]; then
    export VENVWRAP=~/.local/bin/virtualenvwrapper.sh
fi

if [ ! -z $VENVWRAP ]; then
    # virtualenvwrapper -------------------------------------------
    # make sure env directory exists; else create it
    [ -d $HOME/sites/env ] || mkdir -p $HOME/sites/env
    export WORKON_HOME=$HOME/sites/env
    source $VENVWRAP

    # virtualenv --------------------------------------------------
    export VIRTUALENV_USE_DISTRIBUTE=true

    # pip ---------------------------------------------------------
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_REQUIRE_VIRTUALENV=true
    export PIP_RESPECT_VIRTUALENV=true
    export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
fi

