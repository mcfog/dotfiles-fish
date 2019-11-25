function kuse -d "k8s use context"
  set query $argv[1]

  kubectl config get-contexts -o name | fzf +m -q "$query" -0 -1 | read -l ctx
  if [ $ctx ]
    kubectl config use-context $ctx
  else
    echo 'Canceled'
  end
end
