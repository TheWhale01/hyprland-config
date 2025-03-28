#!/bin/bash
HYPR_DIR=$HOME/.config/hypr
WALLPAPER_DIR=${HYPR_DIR}/wallpapers
CURRENT_WALLPAPER=$(hyprctl hyprpaper listloaded)

wallpapers=()

# Get available wallpapers
for wallpaper in ${WALLPAPER_DIR}/*; do
	wallpapers+=("${wallpaper}")
done

write_hyprpaper_config() {
	echo "Changing wallpaper for $1"
	echo "preload = $1" > ${HYPR_DIR}/hyprpaper.conf
	echo "wallpaper = , $1" >> ${HYPR_DIR}/hyprpaper.conf
	hyprctl hyprpaper reload ,"$1"
}

# Check if last wallpaper is selected or if none is loaded
if [ "${CURRENT_WALLPAPER}" == "${wallpapers[-1]}" ] || [ "${CURRENT_WALLPAPER}" == "no wallpapers loaded" ]; then
	write_hyprpaper_config "${wallpapers[0]}"
	exit $?
fi

i=0
while [[ $i -lt ${#wallpapers[@]} ]]; do
	wallpaper=${wallpapers[$i]}
	if [[  ${wallpaper} == ${CURRENT_WALLPAPER} ]]; then
		break
	fi
	((i+=1))
done
((i+=1))
write_hyprpaper_config "${wallpapers[$i]}"
