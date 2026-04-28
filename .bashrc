# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\e[0;32m\h\e[m:\e[0;32m\u\e[m \w\n:: '

alias ls='ls --color=auto'
alias conf='cd ~/.config/'
alias v='nvim'

fzf_search() {
    cd "$(find ~/dev -maxdepth 1 | fzf)"
}

fzf_dir() {
    cd "$(find . -type d | fzf)"
}

bind '"\C-f": "fzf_dir\n"'
bind '"\C-b": "fzf_search\n"'
bind '"\C-t": "tmux\n"'

export PATH=/opt/rocm/bin:$PATH
export LD_LIBRARY_PATH=/opt/rocm/lib:/opt/rocm/llvm/lib:$LD_LIBRARY_PAHT
