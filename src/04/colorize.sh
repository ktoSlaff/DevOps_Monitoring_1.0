#!/bin/bush
color_map=("" "white" "red" "green" "blue" "purple" "black")
fg_colors=("" "\e[1;37m" "\e[1;31m" "\e[1;32m" "\e[1;34m" "\e[1;35m" "\e[1;30m")
bg_colors=("" "\e[47m" "\e[41m" "\e[42m" "\e[44m" "\e[45m" "\e[1;90m")
end_color="\e[0m"

make_pretty () {
	while IFS= read -r line; do
			left_side=$(echo $line | awk {'print $1'})
			right_side=$(echo $line | cut -d '=' -f 2 | sed 's/^[ \t]*//')
			echo -e "${bg_colors[$1]}${fg_colors[$2]}$left_side$end_color = ${bg_colors[$3]}${fg_colors[$4]}$right_side$end_color"
	done <<< "$output"
}

