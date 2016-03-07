function code
  set -lx VSCODE_CWD $PWD
  open -n -b "com.microsoft.VSCode" --args $argv
end
