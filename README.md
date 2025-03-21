# Hyprland Config

This repo contains my hyprland config. I want it to be as portable as possible. 

Keep in mind that this config was created on [Fedora Linux](https://fedoraproject.org/) so it has the best chance to work on this distro

## Dependencies

- [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
- [kitty](https://github.com/kovidgoyal/kitty)
- [nautilus](https://github.com/GNOME/nautilus)
- [dunst](https://github.com/dunst-project/dunst)
- [pipewire](https://pipewire.org/)
- [xdg-desktop-portal-hyprland](https://github.com/hyprwm/xdg-desktop-portal-hyprland)
- qt5-wayland, qt6-wayland
- [rofi](https://github.com/lbonn/rofi)
- [waybar](https://github.com/Alexays/Waybar)
- [hyprpaper](https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper/)
- [hyprlock](https://wiki.hyprland.org/Hypr-Ecosystem/hyprlock/)
- [pavucontrol](https://gitlab.freedesktop.org/pulseaudio/pavucontrol)
- [hyprshot](https://github.com/Gustash/Hyprshot)
- [lm-sensors](https://github.com/lm-sensors/lm-sensors)
- [pamixer](https://github.com/cdemoulins/pamixer)
- [network-manager-applet](https://gitlab.gnome.org/GNOME/network-manager-applet)
- blueman-applet

## Setup

Please refer to the hyprland wiki to install hyprland:
[https://wiki.hyprland.org/](https://wiki.hyprland.org/) 

```bash
cd ~/.config/
git clone https://github.com/TheWhale01/hyprland-config.git hypr
chmod +x ./install.sh
./install.sh
```

log out and start an hyprland session !

## Missing

Some functionality / packages are missing from this:

- Polkit Agent
- Script to easily setup config
- gtk / kde applications styling
- improving `install.sh` so that it replaces the paths automatically
