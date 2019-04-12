function server -d "connect to server"
  argparse 'p/profile=' -- $argv
  if test $status -ne 0
    return -1
  end

  if set -q _flag_p
    set profile $_flag_p
  else
    set profile default
  end
  set query $argv[1]

  set cache_path /tmp/.server_$profile.tsv

  find $cache_path -mtime +7d -exec rm '{}' \; ^ /dev/null > /dev/null

  if test ! -f $cache_path
    echo "fetching server list..."
    aws --profile=$profile ec2 describe-instances | jq -r '.Reservations[] | .Instances[] | {id:.InstanceId,ip:(.NetworkInterfaces[0].PrivateIpAddress), name:((.Tags[]|select(.Key=="Name").Value) // "unnamed")} | [":"+.name, .ip, .id] |@tsv' | sort  > $cache_path".swp"

    if test $status -ne 0
      rm $cache_path".swp"

      set_color red
      echo "failed"
      set_color normal

      return -1
    end

    mv $cache_path".swp" $cache_path
  end

  set target (cat $cache_path | fzf +m -e -q "$query" -0 -1)
  if test -z $target
    echo "no target server, bye"
    return
  end

  set id (echo $target | cut -d\t -f3)
  set ip (echo $target | cut -d\t -f2)
  set name (echo $target | cut -d\t -f1)

  echo -n "connecting to "$name"@"
  set_color -o magenta
  echo -n $profile
  set_color normal
  echo " ("$ip")..."

  aws --profile=$profile ssm start-session --target=$id
end
