function fish_prompt
  switch $TERM
  case xterm-kitty xterm-256color alacritty
      ~/.bin/powerline-go -error $status -shell bare
  case st-256color
      ~/.bin/powerline-go -error $status -shell bare
  case '*'
    set_color $fish_color_cwd
    echo -n '~>'
  end
end
