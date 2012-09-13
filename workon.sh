#!/bin/bash

APP=$1
APPDIR=~/p/$APP

tmux -2 attach-session -d -t $APP 2>/dev/null

if [ $? -ne 0 ]; then
    echo "Starting '$APP' session..."

    cd $APPDIR 2>/dev/null

    if [ $? -ne 0 ]; then
        echo "No such project: $APP"
        exit 1
    fi

    tmux new-session -d -s $APP -n editor
    tmux split-window -t $APP:0 -v -l 2
    tmux new-window -t $APP:1 -n console
    tmux split-window -t $APP:1 -v -p 30

    tmux send-keys -t $APP:0.0 'vim' C-m
    tmux send-keys -t $APP:1.0 'tail -f log/development.log' C-m
    tmux send-keys -t $APP:1.1 './script/rails c' C-m

    tmux select-window -t $APP:0
    tmux -2 attach-session -d -t $APP
fi
