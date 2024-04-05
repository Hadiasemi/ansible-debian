#!/bin/bash

# Temp
price="$(curl -m 10 "rate.sx/btc?qFT@1s" | awk '/^avg/ { print $2 } ')"

# Output
echo 💰 BTC $price

