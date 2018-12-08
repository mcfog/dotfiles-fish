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
+ thefuck
+ direnv

### original stuff

#### j,

parse you `~/.ssh/config`, select with `fzf` and ssh onto it

key binding
```
  bind \e, 'j, -n'
```


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

#### copyhash

```fish
function copyhash  --description "copy current git commit hash to clipboard. powered by `pbcopy` the clipboard utility for osx"
  git rev-parse HEAD | tr -d '\n' | pbcopy ; and echo "copied: "(pbpaste)
end
```

#### cdf

```fish
function cdf --description "cd into latest finder path" 
  cd (osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')
end
```

#### proxy

print HTTP proxy being used, or set them (use direct to unset)

### other 

+ [git abbr](https://gist.github.com/mcfog/078c2a8ab6fd3d2158f3) from [git plugin of oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh)
+ [phpbrew](phpbrew.github.io/phpbrew/)
