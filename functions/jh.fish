function jh
  for i in $dirprev;echo $i;end | awk '!x[$0]++' | fzf -1 -0 --no-sort -e -q "$argv" +m | read -l dir
  if [ $dir ]
    cd $dir
  else
    return 1
  end
end
