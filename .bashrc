#!/bin/bash 
set -o vi

alias ls='ls --color=auto' 
alias vim='vim -p'
alias gvim='gvim -p'
alias contacts='vim ~/wiki/contacts.txt' 
alias in='vim +"tag in"' 
alias today='egrep -H `date +%d%m%Y` ~/wiki/*.txt' 
alias today+1="egrep -H =`date --date='1 days' +%d%m%Y` ~/wiki/*.txt" 
alias tomorrow='today+1' 
alias today+2="egrep -H =`date --date='2 days' +%d%m%Y` ~/wiki/*.txt"
alias today+3="egrep -H =`date --date='3 days' +%d%m%Y` ~/wiki/*.txt"
alias today+4="egrep -H =`date --date='4 days' +%d%m%Y` ~/wiki/*.txt"
alias today+5="egrep -H =`date --date='5 days' +%d%m%Y` ~/wiki/*.txt"
alias today+6="egrep -H =`date --date='6 days' +%d%m%Y` ~/wiki/*.txt"
alias today+7="egrep -H =`date --date='7 days' +%d%m%Y` ~/wiki/*.txt"
alias week='today;tomorrow;today+2;today+3;today+4;today+5;today+6;today+7'
alias today-1="egrep -H =`date --date='-1 days' +%d%m%Y` ~/wiki/*.txt"
alias today-2="egrep -H =`date --date='-2 days' +%d%m%Y` ~/wiki/*.txt"
alias today-3="egrep -H =`date --date='-3 days' +%d%m%Y` ~/wiki/*.txt"
alias today-4="egrep -H =`date --date='-4 days' +%d%m%Y` ~/wiki/*.txt"
alias today-5="egrep -H =`date --date='-5 days' +%d%m%Y` ~/wiki/*.txt"
alias today-6="egrep -H =`date --date='-6 days' +%d%m%Y` ~/wiki/*.txt"
alias today-7="egrep -H =`date --date='-7 days' +%d%m%Y` ~/wiki/*.txt"
alias yesterday='today-1' 
alias lastweek='today;yesterday;today-2;today-3;today-4;today-5;today-6;today-7'
alias snap='scrot -c -d 3'

function get {
    vim -t $1
}

function blog {
    vim ~/projects/blog/$1
}

#PS1='[\u \W]\$ '
PS1='<\W> '

PATH=~/bin:~/bin/prism:/usr/local/bin:$PATH
export OOO_FORCE_DESKTOP=gnome

unset MANPATH

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
 
export XDG_DATA_HOME=/home/anadgouda/.config

export GREP_COLOR="1;33"
alias grep='grep --color=auto'

set show-all-if-ambiguous on

#export all_proxy=admin@192.168.0.26:8080
unset all_proxy
