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

mkdir -p $HOME/.themes $HOME/.icons
sudo cp -r $HOME/.config/hypr/themes/Catppuccin-Mocha /usr/share/themes
sudo cp -r $HOME/.config/hypr/icons/Tela-circle-dracula /usr/share/icons
cp -r $HOME/.config/hypr/themes/Catppuccin-Mocha $HOME/.themes
cp -r $HOME/.config/hypr/icons/Tela-circle-dracula $HOME/.icons

gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha'
gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-dracula'
