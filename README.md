### my fish-shell dotfiles

untested. only for personal backup & reference

### usage 

```sh
mv ~/.config/fish ~/.config/fish.bak

git clone git@github.com:mcfog/dotfiles-fish.git ~/.config/fish
```

### related homebrew formulas

+ fish
+ fasd
+ fzf
+ nvm
+ thefuck
+ direnv

### original stuff

#### jf

inspired by <http://dmitryfrank.com/articles/shell_shortcuts>

basic commands

```sh
# remove cwd from fav list 
~ $ favdel
bookmark deleted

# add cwd to fav list
# optionally add some comment
~ $ fav this is my home
bookmark added

# list your bookmarks
~ $ favls
/private/tmp #
/Users/mcfog #this is my home

# MAGIC!!
~ $ jf
```

if you feel `jf<enter>` is not fast enough, you may add key binding entry to `functions/fish_user_keybindings`

```sh
bind \ej 'jf' 'commandline -f repaint'
```

#### jh

fuzzy history jump. try jump around serveral place and `jh` or `alt+h`

key binding
```sh
bind \eh 'jh' 'commandline -f repaint'
```

#### copypwd

```fish
function copypwd --description "copy \$PWD to clipboard. powered by `pbcopy` the clipboard utility for osx"
  echo -n $PWD | pbcopy
  echo "$PWD copied to clipboard"
end
```

### other 

+ git alias from [git plugin of oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh)
+ [phpbrew](phpbrew.github.io/phpbrew/)
