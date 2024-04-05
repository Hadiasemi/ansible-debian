#!/bin/bash

icon1="💻"

# Percentage
perc="$(command top -bn 2 -d 0.1 | awk '/Cpu/ {print $2}' | tail -n 1)"

if [[ ${#perc} -lt 4 ]] ; then
    perc=" $perc"
fi

# Clk
clk="$(awk '/MHz/{print substr($4, 1, 4); exit}' /proc/cpuinfo)"

echo "$icon1 $perc%, $clk MHz"
