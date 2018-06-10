function jk
  argparse -n 'jk' 'n' -- $argv
  set cmd (awk '/./ && !/^#/ {print $0}' ~/.fav-command | fzf -e +m -q "dev " | awk -F'#' '{print $2}')

  if [ ! $cmd ]
    return 1
  end

  if [ $_flag_n ]
    commandline "$cmd"
  else
    eval "$cmd"
  end
end
