# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# my aliases
alias vi="nvim"
alias vim="nvim"
alias studies="cd $HOME/studies/emsi-4/s1/"
alias javastudies="cd $HOME/studies/emsi-4/s1/java-poo/"
alias compstudies="cd $HOME/studies/emsi-4/s1/compilation/"
alias linuxstudies="cd $HOME/studies/emsi-4/s1/linux/"
alias umlstudies="cd $HOME/studies/emsi-4/s1/uml/"
alias dotnetstudies="cd $HOME/studies/emsi-4/s1/dot_net"
alias dotnetprojectstudies="cd $HOME/studies/emsi-4/projects/hotel-io/"
alias javaprojectstudies="javastudies; cd project/banking/"

# my exports
export PATH="$PATH:$HOME/.local/bin:$HOME/mybin"
PS1="\[$(tput bold)\]\[$(tput setaf 4)\]\w \[$(tput setaf 3)\]> \[$(tput sgr0)\]"
