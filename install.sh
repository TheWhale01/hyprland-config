#!/bin/bash

apps=("waybar" "kitty" "rofi" "dunst" "wlogout")

for app in ${apps[@]}; do
	path="$HOME/.config/hypr/app_config/${app}"

	if [ -d ${path}/scripts/ ]; then
		chmod +x ${path}/scripts/*.sh
	fi

	rm -rf "$HOME/.config/${app}"
	ln -s "$HOME/.config/hypr/app_conf/${app}" $HOME/.config
	echo "${app} installed"
done
