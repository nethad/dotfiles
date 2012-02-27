# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export TERM=xterm-color
export CLICOLOR=1


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

PS1='\[\033[0;32m\]\u@\h\[\033[1;37m\]:\[\033[0;34m\]\W$(__git_ps1 "\[\033[1;31m\][%s]")\[\033[0;32m\]\$\[\e[0m\] ' 
