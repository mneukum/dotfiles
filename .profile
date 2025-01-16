# .profile

# COLORS && FONTS
#LS_COLORS='di=0;35' ; export LS_COLORS

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ $TERM = screen.xterm-256color ]; then
	export TERM=xterm
fi


# USEFUL ALIASES
alias home='cd ~'
# alias st='cd /storage/9/mneukum/'


# ENV VARS
