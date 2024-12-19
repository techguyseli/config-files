#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[1;32m\]\w\[\e[0m\] > '

export PATH=$PATH:/home/user1/Downloads/apache-artemis-2.31.2/bin
