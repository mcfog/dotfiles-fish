function favdel
  if grep "$PWD #" ~/.cd-bookmark > /dev/null
    mv ~/.cd-bookmark ~/.cd-bookmark.old
    grep -v "$PWD #" ~/.cd-bookmark.old > ~/.cd-bookmark
    echo "bookmark deleted"
    return 0
  end

  echo "bookmark not exists!"
  return 1
end
