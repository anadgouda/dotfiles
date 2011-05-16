#!/bin/bash 
set -o vi

alias ls='ls --color=auto' 
alias vim='vim -p'
alias gvim='gvim -p'
alias contacts='vim ~/wiki/contacts.txt' 
alias in='vim +"tag in"' 
alias today='cd ~/wiki/;egrep -H =`date +%d%m%Y` *.txt;cd - > /dev/null' 
alias today+1="cd ~/wiki/;egrep -H =`date --date='1 days' +%d%m%Y` *.txt;cd - > /dev/null" 
alias tomorrow='today+1' 
alias today+2="cd ~/wiki/;egrep -H =`date --date='2 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today+3="cd ~/wiki/;egrep -H =`date --date='3 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today+4="cd ~/wiki/;egrep -H =`date --date='4 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today+5="cd ~/wiki/;egrep -H =`date --date='5 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today+6="cd ~/wiki/;egrep -H =`date --date='6 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today+7="cd ~/wiki/;egrep -H =`date --date='7 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias week='today;tomorrow;today+2;today+3;today+4;today+5;today+6;today+7'
alias today-1="cd ~/wiki/;egrep -H =`date --date='-1 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today-2="cd ~/wiki/;egrep -H =`date --date='-2 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today-3="cd ~/wiki/;egrep -H =`date --date='-3 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today-4="cd ~/wiki/;egrep -H =`date --date='-4 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today-5="cd ~/wiki/;egrep -H =`date --date='-5 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today-6="cd ~/wiki/;egrep -H =`date --date='-6 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias today-7="cd ~/wiki/;egrep -H =`date --date='-7 days' +%d%m%Y` *.txt;cd - > /dev/null"
alias yesterday='today-1' 
alias lastweek='today;yesterday;today-2;today-3;today-4;today-5;today-6;today-7'
alias snap='scrot -c -d 3'
alias gvim='gvim 2> /dev/null'
alias grep='grep --color=auto'

#function get {
#gvim -t $1
#}
#
#function blog {
#gvim ~/projects/blog/$1
#}

#function command_not_found_handle {
#    if [[ -f /usr/lib/command-not-found ]]; then
#        local return_msg
#        local return_code
#        return_msg=$(/usr/lib/command-not-found -- "$1" 2>&1)
#        return_code=$?
#
#        if [[ $return_msg ]]; then
#            echo $return_msg
#            return $return_code
#        fi
#    fi

#    if [[ -f $1 ]]; thenAnonymous\ Pro
#        xdg-open $1
#    else
#        /usr/bin/python /usr/lib/command-not-found -- $1
#        return $?
#    fi
#}

#PS1='[\W]\$ '
PS1='\n\[\e[1;30m\][\[\e[0;36m\]\u@\H\[\e[1;30m\]] \[\e[0;36m\]\w\[\e[0m\]\n\$ '
#PS3='<\W> '



if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
 

set show-all-if-ambiguous on

#xset +dpms
#xset dpms 0 120 180

source ~/.profile
