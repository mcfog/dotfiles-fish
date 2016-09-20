function copyhash --description "copy current git commit hash to clipboard. powered by `pbcopy` the clipboard utility for osx"
  git rev-parse HEAD | tr -d '\n' | pbcopy ; and echo "copied: "(pbpaste)
end
