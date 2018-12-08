function plz -d "sudo the last command in history"
  echo sudo $history[1]
  eval command sudo -Hk $history[1]
end