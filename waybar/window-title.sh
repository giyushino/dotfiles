#!/usr/bin/env bash
# ~/.config/waybar/window-title.sh

title="$(hyprctl activewindow -j | jq -r '.title // ""' | sed 's/[^[:print:]]//g')"
# Fallback if no title
[ -z "$title" ] && title="—"
printf "%s\n" "$title"
