# kamii.zsh-theme

function git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo " %F{#FFA07A}(git:$branch)%f"
  fi
}

PROMPT='%F{#FFFFFF}%~%f$(git_branch)
> '
