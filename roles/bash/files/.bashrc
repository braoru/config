# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export GOPATH="$HOME/go"
export PATH="$PATH:${GOPATH//://bin:}/bin"
export CDPATH=$GOPATH/src

alias vim=nvim
bind 'set show-all-if-ambiguous on'
shopt -s histappend
PROMPT_COMMAND='history -a;history -n'
