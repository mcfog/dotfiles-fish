function g; git $argv; end
function ga; git add $argv; end
function gaa; git add --all $argv; end
function gapa; git add --patch $argv; end
function gb; git branch $argv; end
function gba; git branch -a $argv; end
function gbda; git branch --merged | command grep -vE "^(\*|\s*master\s*\$)" | command xargs -n 1 git branch -d $argv; end
function gbl; git blame -b -w $argv; end
function gbnm; git branch --no-merged $argv; end
function gbr; git branch --remote $argv; end
function gbs; git bisect $argv; end
function gbsb; git bisect bad $argv; end
function gbsg; git bisect good $argv; end
function gbsr; git bisect reset $argv; end
function gbss; git bisect start $argv; end
function gc; git commit -v $argv; end
function gc!; git commit -v --amend $argv; end
function gca; git commit -v -a $argv; end
function gca!; git commit -v -a --amend $argv; end
function gcan; git commit -v -a -s --no-edit --amend $argv; end
function gcam; git commit -a -m $argv; end
function gcb; git checkout -b $argv; end
function gcf; git config --list $argv; end
function gcl; git clone --recursive $argv; end
function gclean; git clean -fd $argv; end
function gcm; git checkout master $argv; end
function gcmsg; git commit -m $argv; end
function gco; git checkout $argv; end
function gcount; git shortlog -sn $argv; end
function gcp; git cherry-pick $argv; end
function gcs; git commit -S $argv; end
function gd; git diff $argv; end
function gdca; git diff --cached $argv; end
function gdct; git describe --tags `git rev-list --tags --max-count=1` $argv; end
function gdt; git diff-tree --no-commit-id --name-only -r $argv; end
function gdw; git diff --word-diff $argv; end
function gf; git fetch $argv; end
function gfa; git fetch --all --prune $argv; end
function gfo; git fetch origin $argv; end
function gg; git gui citool $argv; end
function gga; git gui citool --amend $argv; end
function ggpull; git pull origin (current_branch) $argv; end
function ggpush; git push origin (current_branch) $argv; end
function ggsup; git branch --set-upstream-to=origin/(current_branch) $argv; end
function ggpur; ggu $argv; end
function gignore; git update-index --assume-unchanged $argv; end
function gignored; git ls-files -v | grep "^[[:lower:]]" $argv; end
function gk; gitk --all --branches $argv; end
function gke; gitk --all (git log -g --pretty=format:%h) $argv; end
function gl; git pull $argv; end
function glg; git log --stat --color $argv; end
function glgp; git log --stat --color -p $argv; end
function glgg; git log --graph --color $argv; end
function glgga; git log --graph --decorate --all $argv; end
function glgm; git log --graph --max-count=10 $argv; end
function glo; git log --oneline --decorate --color $argv; end
function glol; "git log --graph --pretty=format:%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset --abbrev-commit" $argv; end
function glola; "git log --graph --pretty=format:%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset --abbrev-commit --all" $argv; end
function glog; git log --oneline --decorate --color --graph $argv; end
function glp; "_git_log_prettily" $argv; end
function gm; git merge $argv; end
function gmom; git merge origin/master $argv; end
function gmt; git mergetool --no-prompt $argv; end
function gmtvim; git mergetool --no-prompt --tool=vimdiff $argv; end
function gmum; git merge upstream/master $argv; end
function gp; git push $argv; end
function gpd; git push --dry-run $argv; end
function gpoat; git push origin --all; and git push origin --tags $argv; end
function gpu; git push upstream $argv; end
function gpv; git push -v $argv; end
function gr; git remote $argv; end
function gra; git remote add $argv; end
function grb; git rebase $argv; end
function grba; git rebase --abort $argv; end
function grbc; git rebase --continue $argv; end
function grbi; git rebase -i $argv; end
function grbm; git rebase master $argv; end
function grbs; git rebase --skip $argv; end
function grh; git reset HEAD $argv; end
function grhh; git reset HEAD --hard $argv; end
function grmv; git remote rename $argv; end
function grrm; git remote remove $argv; end
function grset; git remote set-url $argv; end
function grt; cd (git rev-parse --show-toplevel; or echo ".") $argv; end
function gru; git reset -- $argv; end
function grup; git remote update $argv; end
function grv; git remote -v $argv; end
function gsb; git status -sb $argv; end
function gsd; git svn dcommit $argv; end
function gsi; git submodule init $argv; end
function gsps; git show --pretty=short --show-signature $argv; end
function gsr; git svn rebase $argv; end
function gss; git status -s $argv; end
function gst; git status $argv; end
function gsta; git stash $argv; end
function gstaa; git stash apply $argv; end
function gstd; git stash drop $argv; end
function gstl; git stash list $argv; end
function gstp; git stash pop $argv; end
function gsts; git stash show --text $argv; end
function gsu; git submodule update $argv; end
function gts; git tag -s $argv; end
function gtv; git tag | sort -V $argv; end
function gunignore; git update-index --no-assume-unchanged $argv; end
function gunwip; git log -n 1 | grep -q -c "\-\-wip\-\-"; and git reset HEAD~1 $argv; end
function gup; git pull --rebase $argv; end
function gupv; git pull --rebase -v $argv; end
function glum; git pull upstream master $argv; end
function gvt; git verify-tag $argv; end
function gwch; git whatchanged -p --abbrev-commit --pretty=medium $argv; end
function gwip; git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit -m "--wip--" $argv; end
