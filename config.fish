#fundle plugin tuvistavie/oh-my-fish-core

#for nvm
fundle plugin oh-my-fish/plugin-foreign-env

#fundle plugin derekstavis/plugin-nvm
#fundle plugin edc/bass

#provides `d` `...` etc
fundle plugin tuvistavie/fish-fastdir

fundle init

for file in ~/.config/fish/custom/*.fish
  . $file
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
