function jk_2
  argparse -n 'jk' 'n' -- $argv
  set cmd (awk '/./ && !/^#/ {print $0}' ~/.fav-command-2 | fzf -e +m | awk -F'#' '{print $2}')

  if [ ! $cmd ]
    return 1
  end

  if [ $_flag_n ]
    commandline "$cmd"
  else
    eval "$cmd"
  end
end
