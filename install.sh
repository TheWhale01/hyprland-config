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

tar -xvf $HOME/.config/hypr/wallpapers.tar.gz -C $HOME/.config/hypr
tar -xvf $HOME/.config/hypr/themes.tar.gz -C $HOME/.config/hypr
tar -xvf $HOME/.config/hypr/icons.tar.gz -C $HOME/.config/hypr

mkdir -p $HOME/.themes $HOME/.icons
sudo cp -r $HOME/.config/hypr/themes/Catppuccin-Mocha /usr/share/themes
sudo cp -r $HOME/.config/hypr/icons/Tela-circle-dracula /usr/share/icons
cp -r $HOME/.config/hypr/themes/Catppuccin-Mocha $HOME/.themes
cp -r $HOME/.config/hypr/icons/Tela-circle-dracula $HOME/.icons

gsettings set org.gnome.desktop.interface gtk-theme 'Catppuccin-Mocha'
gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-dracula'

# Install SDDM theme
current_wallpaper=$(hyprctl hyprpaper listloaded)
sudo tar -xvf $HOME/.config/hypr/eucalyptus-drop.tar.gz -C /usr/share/sddm/themes/
sudo chown -R "whale:whale" /usr/share/sddm/themes/eucalyptus-drop/Backgrounds
cp "${current_wallpaper}" /usr/share/sddm/themes/eucalyptus-drop/Backgrounds/background.jpg
