# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\e[0;32m\h\e[m:\e[0;32m\u\e[m \w\n:: '

alias ls='ls --color=auto'

