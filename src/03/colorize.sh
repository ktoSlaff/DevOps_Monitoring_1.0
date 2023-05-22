#!/bin/bush

font_colors=("" "\e[1;97m" "\e[1;91m" "\e[1;92m" "\e[1;94m" "\e[1;95m" "\e[1;90m")
back_colors=("" "\e[0;107m" "\e[0;101m" "\e[0;102m" "\e[0;104m" "\e[0;105m" "\e[0;100m")
eq_colors="\e[0m"

make_pretty () {
	while IFS= read -r line; do
			left_side=$(echo $line | awk {'print $1'})
			right_side=$(echo $line | cut -d '=' -f 2 | sed 's/^[ \t]*//')
			echo -e "${back_colors[$1]}${font_colors[$2]}$left_side$eq_colors = ${back_colors[$3]}${font_colors[$4]}$right_side$eq_colors"
	done <<< "$output"
}