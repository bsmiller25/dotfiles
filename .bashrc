# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# environmental variables

export PUI2016="/home/cusp/bm2393/PUI2016_bm2393"
export MTAKEY="d51f52d5-8717-420f-82f5-fe4d0ed5983b"
export DFDATA="/gws/open/NYCOpenData/nycopendata/data"
export PUIDATA="/home/cusp/bm2393/PUIdata"

# alias

alias pui2016="cd $PUI2016"
alias python="/opt/rh/anaconda/root/envs/PUI2016_Python2/bin/python"
