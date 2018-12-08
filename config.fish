set -gx  LC_ALL en_US.UTF-8  

for file in ~/.config/fish/custom/*.fish
  . $file
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
