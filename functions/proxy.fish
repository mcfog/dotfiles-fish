function proxy -d "print or set HTTP proxy"
	if set -q argv[1]
		set -l last $HTTP_PROXY

		if [ $argv[1] = "direct" ]
			set -e HTTP_PROXY
			set -e HTTPS_PROXY

			echo -n "cleared, "
		else
			set -l last $HTTP_PROXY
			set -gx HTTP_PROXY $argv[1]
			set -gx HTTPS_PROXY $argv[1]

			echo -n "ok. "
		end

		if set -q last
			echo "was "$last
		else
			echo "was empty"
		end
	else
		echo $HTTP_PROXY
	end
end
