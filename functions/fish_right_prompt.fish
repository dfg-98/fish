function fish_right_prompt -d "Write out the right prompt"
  set -l exit_code $status

  set_color black


  # Print a yellow fork symbol when in a subshell
  set -l max_shlvl 1
  test $TERM = "screen"; and set -l max_shlvl 3
  if test $SHLVL -gt $max_shlvl
    set_color yellow
    echo -n "⑂ "
    set_color black
  end

  # Print a red dot for failed commands.
  if test $exit_code -ne 0
    set_color red  
  else
  	set_color green
  end

  echo -n "• "
  set_color black



  # Print the username when the user has been changed.
  if test $USER != $LOGNAME
    echo -n "$USER@"
  end

  # Print the current directory. Replace $HOME with ~.
  echo -n (set_color cyan)(pwd | sed -e "s|^$HOME|~|")


  set_color normal
end
