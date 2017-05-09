function gco,
  git status -suno | read -l st
  if [ -n "$st" ]
    git status
    return -1
  end

  git branch --no-merged | grep -v '*' | tr -d " " | fzf | read -l branch
  git checkout $argv $branch
end
