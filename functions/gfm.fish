function gfm
	echo "fething..."
  git fetch origin
  git branch --remote --no-merged | tr -d " " |grep -v "composer" | fzf | read -l branch
  git merge --no-ff $branch
end
