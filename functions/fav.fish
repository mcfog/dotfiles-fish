function fav --description 'add current working directory to favorite list'
  if grep (pwd)" #" ~/.cd-bookmark > /dev/null
    echo "bookmark already exists! use 'favdel' to delete that"
    return 1
  end

  echo (pwd) "#$argv" >> ~/.cd-bookmark
  echo "bookmark added"
end
