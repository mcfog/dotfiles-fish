set -gx  LC_ALL en_US.UTF-8  

#for nvm
fundle plugin oh-my-fish/plugin-foreign-env

#provides `d` `...` etc
fundle plugin tuvistavie/fish-fastdir

fundle init

for file in ~/.config/fish/custom/*.fish
  . $file
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
