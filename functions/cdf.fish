function cdf --description "cd into latest finder path" 
	cd (osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')
end
