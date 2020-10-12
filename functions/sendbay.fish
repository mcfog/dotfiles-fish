function sendbay
  set x (uuidgen)
  set url https://patchbay.pub/$x
  set cmd  "curl -L $url -o "(basename $argv[1])
  echo $cmd | pbcopy
  echo "curl -L $url -o $argv[1]"
  cat $argv[1] | http post $url
end
