function copypwd --description "copy \$PWD to clipboard. powered by `pbcopy` the clipboard utility for osx"
  echo -n $PWD | pbcopy
  echo "$PWD copied to clipboard"
  echo
end
