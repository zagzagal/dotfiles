function fish_prompt
	if test "$TERM" = "xterm-kitty"
		~/.bin/powerline-go -error $status -shell bare
	else
		set_color $fish_color_cwd
		echo -n '~>'
	end
end
