#!/bin/bash
while true;
do
dd=$((120 + RANDOM % 60));
sleep $dd
date +"%r"


set -o errexit
set -o nounset

keystroke="CTRL+F5"

# set to whatever's given as argument, defaults to firefox
BROWSER="${1:-firefox}"

# find all visible browser windows
browser_windows="$(xdotool search --sync --all --onlyvisible --name ${BROWSER})"

# Send keystroke
for bw in $browser_windows; do
    xdotool key --window "$bw" "$keystroke"
done
sleep 3
dd=$((180 + RANDOM % 140));
sleep $dd
date +"%r"


set -o errexit
set -o nounset

keystroke="CTRL+F5"

# set to whatever's given as argument, defaults to firefox
BROWSER="${1:-firefox}"

# find all visible browser windows
browser_windows="$(xdotool search --sync --all --onlyvisible --name ${BROWSER})"

# Send keystroke
for bw in $browser_windows; do
    xdotool key --window "$bw" "$keystroke"
done
done
