#!/bin/bash

KITTY_THEMES="$HOME/.config/kitty/themes"
ROFI_THEMES="$HOME/.config/rofi/themes"
WAYBAR_THEMES="$HOME/.config/waybar/themes"
WALL_DIR="$HOME/.config/wallpapers"

SELECTED=$(ls "$KITTY_THEMES" | sed 's/\.conf//' | rofi -dmenu -theme ~/.config/rofi/main.rasi -p "Select Theme")

[ -z "$SELECTED" ] && exit 1

CURRENT_THEME=$(readlink "$HOME/.config/kitty/current-theme.conf" | xargs basename | sed 's/\.conf//')

if [ "$SELECTED" == "$CURRENT_THEME" ]; then
    notify-send "System Theme" "You are currently on this theme!"
    exit 0
fi

ln -sf "$KITTY_THEMES/$SELECTED.conf" "$HOME/.config/kitty/current-theme.conf"
ln -sf "$ROFI_THEMES/$SELECTED.rasi" "$HOME/.config/rofi/colors.rasi"
ln -sf "$WAYBAR_THEMES/$SELECTED.css" "$HOME/.config/waybar/colors.css"

WALLPAPER=$(find "$WALL_DIR" -name "$SELECTED.*" | head -n 1)
swww img "$WALLPAPER" --transition-type wipe

if [ "$SELECTED" == "rosepine" ]; then
    echo "\$border = rgba(d7827eee)" > "$HOME/.config/hypr/colors.conf"
elif [ "$SELECTED" == "catppuccin" ]; then
    echo "\$border = rgba(8aadf4ee)" > "$HOME/.config/hypr/colors.conf"
elif [ "$SELECTED" == "gruvbox" ]; then
    echo "\$border = rgba(8ec07cee)" > "$HOME/.config/hypr/colors.conf"
fi

killall -USR1 kitty
killall waybar
sleep 0.3
waybar & disown
hyprctl reload

notify-send "System Theme" "Switched to $SELECTED"
