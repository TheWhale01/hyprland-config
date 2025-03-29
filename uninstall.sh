#!/bin/bash

apps=("waybar" "kitty" "rofi" "dunst" "wlogout")

for app in ${apps[@]}; do
	rm -rf "$HOME/.config/${app}"
	echo "${app} uninstalled"
done

sudo rm -rf /usr/share/themes/Catppuccin-Mocha
sudo rm -rf /usr/share/icons/Tela-circle-dracula
rm -rf ~/.themes
rm -rf ~/.icons
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Adwaita-dark'
