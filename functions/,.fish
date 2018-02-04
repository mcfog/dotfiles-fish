function , --description 'smart ssh'
  if [ (count $argv) -gt 0 ]
    ssh $argv
  else
    j,
  end
end
