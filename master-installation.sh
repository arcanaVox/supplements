#!/bin/sh

# Install additional packages
yay -S --needed --noconfirm $(grep -v '^#' ~/supplements/packages.txt | tr '\n' ' ')

. ./install-stow.sh

# Custom branding
cp ~/supplements/screensaver-mckallip.txt ~/.config/omarchy/branding/screensaver.txt

# Hyprland customizations
cp ~/supplements/hypr/input.conf ~/.config/hypr/input.conf
cp ~/supplements/hypr/looknfeel.conf ~/.config/hypr/looknfeel.conf
cp ~/supplements/hypr/monitors.conf ~/.config/hypr/monitors.conf
cp ~/supplements/hypr/hypridle.conf ~/.config/hypr/hypridle.conf

# Waybar customizations
cp ~/supplements/waybar/config.jsonc ~/.config/waybar/config.jsonc

# Custom Plymouth boot logo (requires sudo)
./install-plymouth-logo.sh
