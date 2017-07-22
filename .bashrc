# .bashrc

# enable color support of ls and also add aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

force_color_prompt=yes

# User specific aliases and functions
# environmental variables
export TERM=xterm-256color

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source local definitions
if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi

