function j,
  argparse -n 'j,' 'n' -- $argv
  set host (awk '/[Hh]ost / { for (i=2;i<=NF;i++) {print $i} }' ~/.ssh/config | fzf -1 -0 --no-sort +m)

  if [ ! $host ]
    return 1
  end

  if [ $_flag_n ]
    commandline "ssh $host"
  else
    echo "Connecting to [$host]"
    ssh $host
  end
end
