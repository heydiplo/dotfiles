# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler cap gem git rails rails3 ruby ssh-agent vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# aliases
alias la='ls -Al'
alias cp='cp -vi'
alias ps='ps faux'
alias mv='mv -vi'
alias rr='passenger_restart'
alias tmux='TERM=xterm-256color tmux'
alias ton='tmux attach -t'

function rails_console {
    rails_3=`rails -v|grep " 3."`

    if [ -a "./script/console" ] 
    then
        ./script/console
    elif [ -n "$rails_3" ] 
    then
        rails c
    fi
}

alias sc='rails_console'

for ruby_dir in `ls -1d /opt/ruby* 2> /dev/null | tail -n 1`
do
    PATH="$ruby_dir/bin:$PATH"
done
