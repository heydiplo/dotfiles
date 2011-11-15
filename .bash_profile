# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

for ruby_dir in `ls -1d /opt/ruby* 2> /dev/null | tail -n 1`
do
    PATH="$ruby_dir/bin:$PATH"
done

if [ -d "$HOME/.rbenv" ] ; then
    export PATH="$HOME/.rbenv/bin:$PATH"
fi

hash rbenv && eval "$(rbenv init -)"

passenger_restart(){
    if [ -d "./tmp" ] ; then
        touch ./tmp/restart
        echo 'Restarting passenger...'
    else
        echo 'Ain`t no Rails root, right?'
    fi
}

rails_console(){
    rails_3=`rails -v|grep " 3."`
    if [ -f "./script/console" ] 
    then
        ./script/console
    elif [ -n "$rails_3" ] 
    then
        rails c
    fi
}

alias sc='rails_console'
alias m='mongrel_rails'
alias cp='cp -vi'
alias ps='ps -Af --forest'
alias mv='mv -vi'
alias rr='passenger_restart'
alias tmux='TERM=xterm-256color tmux'
alias workon='~/workon.sh'
alias ton='~/workon.sh'

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


