function fish_user_key_bindings
  fzf_key_bindings

  bind \ej 'jf' 'commandline -f repaint'
  bind \eh 'jh' 'commandline -f repaint'
  bind \e, 'j, -n'
  bind \ek 'server'
  bind \eK 'jk_2 -n'
  bind \eP _pp
  bind \ew 'echo' 'copypwd' 'commandline -f repaint'
  bind \ea 'echo' 'copyhash' 'commandline -f repaint'
end
