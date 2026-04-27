export ZSH="$HOME/.oh-my-zsh"
export EDITOR=emacs
export ZSH_COMPDUMP=$HOME/.cache/.zcompdump-$HOST

COMPLETION_WAITING_DOTS=true
ZSH_THEME=robbyrussell

plugins=(git sudo zsh-autosuggestions rails)

source $ZSH/oh-my-zsh.sh

function fzf_search() {
    cd "$(find ~/dev -maxdepth 1 | fzf)"
}

bindkey -r '^b'
bindkey -r '^o'
bindkey -s '^b' 'fzf_search\n'
bindkey -s '^t' 'tmux\n'
