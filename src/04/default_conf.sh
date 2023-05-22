#!/bin/bush

default=("2" "6" "3" "2")

default_set () {
    for p in "${!color_arg[@]}"; do
        if [ -z "${color_arg[$p]}" ]; then
            for i in "${!color_arg[@]}"; do
                color_arg[$i]=${default[$i]}
            done
            add_default
            break
        fi    
    done
}

add_default () {
    column1_background="default"
	column1_font_color="default"
	column2_background="default"
	column2_font_color="default"   
}