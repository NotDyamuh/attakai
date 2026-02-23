#!/bin/bash

killall -9 waybar
# waybar & 
waybar > /dev/null 2>&1 & disown