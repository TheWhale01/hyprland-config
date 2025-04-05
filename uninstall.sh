#!/bin/bash

apps=("waybar" "kitty" "rofi" "dunst" "wlogout")

for app in ${apps[@]}; do
	rm -rf "$HOME/.config/${app}"
	echo "${app} uninstalled"
done

sudo rm -rf /usr/share/themes/Catppuccin-Mocha
sudo rm -rf /usr/share/icons/Tela-circle-dracula
sudo rm -rf ~/.themes
sudo rm -rf ~/.icons
sudo rm -rf $HOME/.config/hypr/wallpapers
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Adwaita-dark'

sudo rm -rf /usr/share/sddm/themes/*
