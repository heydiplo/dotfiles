#############################################################################
# auto-ssh-agent.sh - shell include file for bash to manage a single
# persistent ssh-agent(1) process over multiple logins or shells without
# the agent's environment.
# The latest version of this can be found at:
# http://encryptio.com/code/auto-ssh-agent
#############################################################################
# For those "in the know": This is a BSD-like license. Keep this notice
# intact, no matter what. You can do almost anything else that you wish.
#############################################################################
# Copyright (c) 2007, Chris Kastorff, All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions, and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * The name Chris Kastorff may not be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#############################################################################

# sourced at every bashrc and/or login
if [ -z $SSH_AGENT_PID ]; then
    if [ ! -e $HOME/.ssh-agent-pid ]; then
        touch $HOME/.ssh-agent-pid
    fi
    OLD_PID=`cat $HOME/.ssh-agent-pid`; 
    
    LOAD_AGENT="load"
    if kill -0 $OLD_PID > /dev/null 2>&1; then
        PROG_NAME=`ps -p $OLD_PID -o command | tail -n1 | awk '{print $1}'`; # portable?
        if [ $PROG_NAME == "ssh-agent" ]; then
            # seems to be still running.
            . $HOME/.ssh-agent-info
            LOAD_AGENT=""
        fi
    fi
    
    if [ -n "$LOAD_AGENT" ]; then
        eval `ssh-agent` > /dev/null 2>&1
        echo "SSH_AUTH_SOCK=$SSH_AUTH_SOCK; export SSH_AUTH_SOCK;" >  $HOME/.ssh-agent-info
        echo "SSH_AGENT_PID=$SSH_AGENT_PID; export SSH_AGENT_PID;" >> $HOME/.ssh-agent-info
        echo -n $SSH_AGENT_PID > ~/.ssh-agent-pid
    fi
fi

