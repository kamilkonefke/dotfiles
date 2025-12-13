export EDITOR=nvim

plugins=(git)

function git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo "%F{#FFA07A}(git:$branch)%f"
  fi
}

PS1="%F{#FFFFFF}%~%f $(git_branch)
λ "

alias ll="ls -l"
alias la="ls -la"

alias conf="cd ~/.config/"
alias v="nvim"

function fzf_search() {
    cd "$(find ~/dev -maxdepth 1 | fzf)"
}

bindkey -r '^b'
bindkey -r '^o'
bindkey -s '^b' 'fzf_search\n'
bindkey -s '^t' 'tmux\n'
bindkey -s '^e' 'v .\n'
