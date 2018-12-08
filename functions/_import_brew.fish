function _import_brew --description "append CPPFLAGS && LDFLAGS"
	if brew --prefix $argv[1] > /dev/null
		set -gx CPPFLAGS $CPPFLAGS "-I"(brew --prefix $argv[1])"/include"
		set -gx LDFLAGS $LDFLAGS "-L"(brew --prefix $argv[1])"/lib"
	else
		return -1
	end
end