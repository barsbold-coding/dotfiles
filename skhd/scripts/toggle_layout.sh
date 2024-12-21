#!/bin/bash

CURRENT_LAYOUT=$(yabai -m query --spaces --space | jq '."type"')

if [ "$CURRENT_LAYOUT" = "\"bsp\"" ]; then
  yabai -m space --layout stack
else
  yabai -m space --layout bsp
fi
  
