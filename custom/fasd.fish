
function -e fish_preexec _run_fasd
     fasd --proc (fasd --sanitize $argv | tr -s ' ' \n) > /dev/null 2>&1
end

function j
    set -l dir (fasd -de "printf %s" "$argv")
    if test "$dir" = ""
        echo "no matching directory"
        return 1
    end
    cd $dir
end

function f
    fasd -f "$argv"
end

function r
    fasd -fe $argv[1] "$argv[2..-1]"
end
