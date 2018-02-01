function j,
  set host (awk '/[Hh]ost / { for (i=2;i<=NF;i++) {print $i} }' ~/.ssh/config | fzf -1 -0 --no-sort +m)

  if [ ! $host ]
    return 1
  end

  echo "Connecting to [$host]"
  ssh $host
end
