function fish_right_prompt
  set a ""
  if [ -n "$DOCKER_HOST" ]
    set_color magenta
  	echo -e "\033[2D"
  	echo -n "🐳"
  	echo -e "\033[1C"
    echo $DOCKER_HOST | php -r '$a = parse_url(trim(stream_get_contents(STDIN))); echo $a["host"]??$a["path"];'
    set_color normal
    set a 1
  end

  set kctx (kubectl config view -o=jsonpath="{@.current-context}")

  if [ -n "$kctx" ]
  	[ -n "$a" ] && echo -n '  '
  	echo -e " \033[2D"
  	echo -n "☸️"
  	echo -e "\033[2C"
  	set_color c92a2a red
  	echo $kctx
  	set_color normal
  end
end
