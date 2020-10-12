function golint
  set final 0

  find . -name go.mod ! \( \
  -path ./vendor/\* \
  \) -type f | fzf -1 -0 --no-sort -m -e -q "$argv" | while read -l mod
    set mod (dirname $mod)
    pushd $mod
      echo linting mod $mod
      golangci-lint run --fix --timeout 1m
      if test $status -ne 0
        set final 1
      end
    popd
  end

  return $final
end
