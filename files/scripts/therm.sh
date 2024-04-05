#!/bin/bash

# Temp
sense="$(sensors > ~/.cache/techno_therm)"
temp1="$(sensors | awk '/Tctl/{print $2; exit}')"
temp2="$(nvidia-smi -q -d temperature | awk '/GPU Current/{print $5; exit}')"
icon1="🌡️"

# Fan
# fan="$(echo | awk '/fan1/ {print $2}' ~/.cache/techno_therm)"
#
# if [[ $fan == 0 ]] ; then
#     icon2="󰠝"
# else
#     icon2="󰈐"
# fi

# Output
echo $icon1 CPU: $temp1, GPU: $temp2°C

# , $fan RPM
