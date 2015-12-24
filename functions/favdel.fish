function favdel
  if grep (pwd)" #" ~/.cd-bookmark > /dev/null
    grep -v (pwd)" #" ~/.cd-bookmark > ~/.cd-bookmark
    return 0
  end

  echo "bookmark not exists!"
  return 1
end
