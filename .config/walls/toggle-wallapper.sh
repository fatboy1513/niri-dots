#!/bin/sh

set_wallpaper_hyprland() {
    dir="${HOME}/.config/walls/"
    img="$(find "$dir" -name '*.jpg' -o -name '*.jpeg' -o -name '*.png' -o -name '*.webp' | shuf -n1)"

    swww img --resize="fit" "$img"
}

set_wallpaper_hyprland
