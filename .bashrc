# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[ \u@\h \W ]
λ '

alias ls='ls --color=auto'
alias conf='cd ~/.config/'
alias v='nvim'

fzf_search() {
    cd "$(find ~/dev -maxdepth 1 | fzf)"
}

bind '"\C-b": "fzf_search\n"'
bind '"\C-t": "tmux\n"'
