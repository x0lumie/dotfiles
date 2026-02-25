#!/bin/bash
DIR="$HOME/Pictures/Wallpapers"
# List files and pipe to Rofi
PICS=$(ls $DIR)
SELECT=$(echo -e "$PICS" | rofi -dmenu -p "Select Wallpaper")

# Apply selected wallpaper if selection isn't empty
if [ ! -z "$SELECT" ]; then
    swww img "$DIR/$SELECT" --transition-type random
    # Optional: trigger color scheme generation here
    # matugen image "$DIR/$SELECT" 
fi
