# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

alias sc='script/console'
alias m='mongrel_rails'
alias cp='cp -vi'
alias mv='mv -vi'

shopt -s expand_aliases

# include .bashrc if it exists
if [ -f "/usr/local/bin/virtualenvwrapper.sh" ]; then
    source "/usr/local/bin/virtualenvwrapper.sh"
fi

if [ -f "~/srces/git-completion.bash" ]; then
    source "~/srces/git-completion.bas"
fi
