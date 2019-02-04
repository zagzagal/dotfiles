set -gx PATH ~/.bin $PATH

# new shell banner
if status is-interactive
	begin
		figlet -cf graffiti Void
		fortune -o | cowsay -f eyes -W 80
	end | lolcat
end
