#!/bin/bash

upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/ {percent=$2} /state/ {state=$2} END {printf " [%s] [%s]\n",state, percent}'
