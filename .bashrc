# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W ]
λ '

alias ls='ls --color=auto'
alias conf='cd ~/.config/'
alias v='nvim'

function fzf_search() {
    cd "$(find ~/dev -maxdepth 1 | fzf)"
}

bind -x '"\C-b": fzf_search'
bind '"\C-t": "tmux\n"'
