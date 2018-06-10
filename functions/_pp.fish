function _pp --description 'copy output AND print it out'
    if commandline -j | string match -q -r -v "pbcopy *\$"
        commandline -aj " ^&1 | pbcopy; and pbpaste"
    end
end
