function plz -d "sudo the last command in history"
  echo sudo $history[1]
  eval command sudo -k $history[1]
end