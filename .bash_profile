# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "/opt/ruby-enterprise-1.8.7-2010.02/bin" ] ; then
    PATH="/opt/ruby-enterprise-1.8.7-2010.02/bin:$PATH"
fi

passenger_restart(){
    if [ -d "./tmp" ] ; then
        touch ./tmp/restart
        echo 'Restarting passenger...'
    else
        echo 'Ain`t no Rails root, right?'
    fi
}

alias sc='script/console'
alias m='mongrel_rails'
alias cp='cp -vi'
alias mv='mv -vi'
alias rr='passenger_restart'

shopt -s expand_aliases

# include .bashrc if it exists
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -f ~/srces/git-completion.bash ]; then
    source ~/srces/git-completion.bash
fi

if [[ "`uname`" == 'Darwin' ]]; then
    export PATH=/opt/local/bin:/opt/local/sbin:$PATH
fi
