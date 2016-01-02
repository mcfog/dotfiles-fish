function copypwd
  echo -n $PWD | pbcopy
  echo "$PWD copied to clipboard"
end
