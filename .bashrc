# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\e[1;36m\h\e[m:\e[1;36m\u\e[m \w\n:: '

alias ls='ls --color=auto'
