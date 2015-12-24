function jf
  favls | fzf -1 -0 --no-sort -e -q "$argv" +m | awk -F ' #' '{print $1}' | read -l dir
  if [ $dir ]
    cd $dir
  else
    return 1
  end
end
