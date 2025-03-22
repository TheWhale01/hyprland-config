#!/bin/bash

apps=("waybar" "kitty" "rofi" "dunst" "wlogout")

for app in ${apps[@]}; do
	rm -rf "$HOME/.config/${app}"
	echo "${app} uninstalled"
done
