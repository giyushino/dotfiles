#!/bin/bash

COLOR=$1

echo setting color to $COLOR
BASE="/home/allan/.config"

#/home/allan/.config/hypr/hyprland.conf

if [ $COLOR == "blue" ]; then
    cp $BASE/fish/config_blue.fish $BASE/fish/config.fish
    cp $BASE/fish/fish_variables_blue $BASE/fish/fish_variables
    cp $BASE/fish/functions/blue.fish $BASE/fish/functions/fish_prompt.fish
    cp $BASE/waybar/blue.css $BASE/waybar/style.css
    cp $BASE/hypr/blue.conf $BASE/hypr/hyprland.conf 
    cp $BASE/kitty/blue.conf $BASE/kitty/kitty.conf
    cp $BASE/nvim/blue/init.lua $BASE/nvim/init.lua
    cp $BASE/nvim/blue/theme.lua $BASE/nvim/lua/plugins/theme.lua
    cp $BASE/nvim/blue/lualine.lua $BASE/nvim/lua/plugins/lualine.lua

    hyprctl hyprpaper preload /home/allan/Downloads/images/aquarium_reformat.jpg
    hyprctl hyprpaper wallpaper "eDP-1,/home/allan/Downloads/images/aquarium_reformat.jpg"
    hyprctl hyprpaper wallpaper "DP-1,/home/allan/Downloads/images/aquarium_reformat.jpg"

else
    cp $BASE/fish/config_black.fish $BASE/fish/config.fish
    cp $BASE/fish/fish_variables_black $BASE/fish/fish_variables
    cp $BASE/fish/functions/black.fish $BASE/fish/functions/fish_prompt.fish
    cp $BASE/waybar/black.css $BASE/waybar/style.css
    cp $BASE/hypr/black.conf $BASE/hypr/hyprland.conf 
    cp $BASE/kitty/black.conf $BASE/kitty/kitty.conf
    cp $BASE/nvim/black/init.lua $BASE/nvim/init.lua
    cp $BASE/nvim/black/theme.lua $BASE/nvim/lua/plugins/theme.lua
    cp $BASE/nvim/black/lualine.lua $BASE/nvim/lua/plugins/lualine.lua

    hyprctl hyprpaper preload /home/allan/Downloads/images/ed1.jpg
    hyprctl hyprpaper wallpaper "eDP-1,/home/allan/Downloads/images/ed1.jpg"
    hyprctl hyprpaper wallpaper "DP-1,/home/allan/Downloads/images/ed1.jpg"
fi


#mpvpaper eDP-1 /home/allan/Downloads/videos/chasca-genshin-impact.3840x2160.mp4 -o "loop=inf video-unscaled=no video-zoom=0.4"
pkill waybar
nohup waybar >/dev/null 2>&1 &
exec >/dev/null 2>&1
