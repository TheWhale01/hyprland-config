#!/bin/bash

apps=("waybar" "kitty" "rofi")

for app in ${apps[@]}; do
	rm -rf "$HOME/.config/${app}"
	echo "${app} uninstalled"
done
