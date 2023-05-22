#!/bin/bush

color_set () {
    . ./colours.conf
    color_arg[0]=$column1_background
    color_arg[1]=$column1_font_color
    color_arg[2]=$column2_background
    color_arg[3]=$column2_font_color
    . ./default_conf.sh
    default_set ${color_arg[@]}
}

print_conf() {
	echo "column1_background = $column1_background (${color_map[color_arg[0]]})"
	echo "column1_font_color = $column1_font_color (${color_map[color_arg[1]]})"
	echo "column2_background = $column2_background (${color_map[color_arg[2]]})"
	echo "column2_font_color = $column2_font_color (${color_map[color_arg[3]]})"
}