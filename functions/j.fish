function j
  fasd -Rdl "$argv[1]" | fzf -1 -0 --no-sort +m | read -l dir
  if [ $dir ]
    cd $dir
  else
    return 1
  end
end
