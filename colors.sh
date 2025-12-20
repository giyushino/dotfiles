#!/bin/bash

COLOR=$1

echo "Setting color to $COLOR"
BASE="/home/allan/.config"

if [ "$COLOR" == "blue" ]; then
    # Fish
    cp $BASE/fish/blue.fish $BASE/fish/conf.d/colors.fish
    cp $BASE/fish/functions/blue.fish $BASE/fish/functions/fish_prompt.fish

    # Waybar
    cp $BASE/waybar/blue.css $BASE/waybar/colors.css

    # Hyprland
    cp $BASE/hypr/blue.conf $BASE/hypr/colors.conf

    # Kitty
    cp $BASE/kitty/blue.conf $BASE/kitty/kitty.conf

    # Neovim
    cp $BASE/nvim/lua/colors/blue.lua $BASE/nvim/lua/colors/init.lua

    # Wallpaper
    hyprctl hyprpaper preload /home/allan/Downloads/images/aquarium_reformat.jpg
    hyprctl hyprpaper wallpaper "eDP-1,/home/allan/Downloads/images/aquarium_reformat.jpg"
    hyprctl hyprpaper wallpaper "DP-1,/home/allan/Downloads/images/aquarium_reformat.jpg"
    hyprctl hyprpaper wallpaper "HDMI-A-1,/home/allan/Downloads/images/aquarium_reformat.jpg"

else
    # Fish
    cp $BASE/fish/black.fish $BASE/fish/conf.d/colors.fish
    cp $BASE/fish/functions/black.fish $BASE/fish/functions/fish_prompt.fish

    # Waybar
    cp $BASE/waybar/black.css $BASE/waybar/colors.css

    # Hyprland
    cp $BASE/hypr/black.conf $BASE/hypr/colors.conf

    # Kitty
    cp $BASE/kitty/black.conf $BASE/kitty/kitty.conf

    # Neovim
    cp $BASE/nvim/lua/colors/black.lua $BASE/nvim/lua/colors/init.lua

    # Wallpaper
    hyprctl hyprpaper preload /home/allan/Downloads/images/library.webp
    hyprctl hyprpaper wallpaper "eDP-1,/home/allan/Downloads/images/library.webp"
    hyprctl hyprpaper wallpaper "DP-1,/home/allan/Downloads/images/library.webp"
    hyprctl hyprpaper wallpaper "HDMI-A-1,/home/allan/Downloads/images/library.webp"
fi

# Restart waybar
pkill waybar
nohup waybar >/dev/null 2>&1 &
exec >/dev/null 2>&1
