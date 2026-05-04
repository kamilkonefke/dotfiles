# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\e[0;32m\h\e[m:\e[0;32m\u\e[m \w\n:: '

alias ls='ls --color=auto'

export PATH=/opt/rocm/bin:$PATH
export LD_LIBRARY_PATH=/opt/rocm/lib:/opt/rocm/llvm/lib:$LD_LIBRARY_PAHT
